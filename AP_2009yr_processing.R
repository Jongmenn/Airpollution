#라이브러리 
library(readxl)   ;library(sqldf)
library(lubridate);library(ggplot2)
#--------------------------------------------------------------------------------#
#2009년 확정자료 
setwd("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2009")

air_q1<-read_excel("2009년01분기.xlsx",sheet=1) ; air_q1<- as.data.frame(air_q1)
air_q2<-read_excel("2009년02분기.xlsx",sheet=1) ; air_q2<- as.data.frame(air_q2)
air_q3<-read_excel("2009년03분기.xlsx",sheet=1) ; air_q3<- as.data.frame(air_q3)
air_q4<-read_excel("2009년04분기.xlsx",sheet=1) ; air_q4<- as.data.frame(air_q4)

nrow(air_q1) ; nrow(air_q2) ;nrow(air_q3) ;nrow(air_q4)

#data merge 
air2009<-rbind(air_q1,air_q2,air_q3,air_q4)

#colume 명 변경 
names(air2009)[c(1:4,10)]=c("sido","codename","code","datetime","address")

#측정소별 한시간 단위 -> 일단위 변환 변수 
air2009$yymmdd=substr(air2009$datetime,1,8) #년월일 

#하루 기준 75% 이상 측정만 추출하기 위한 merge key 
air2009$mkey=paste0(air2009$code,"-",air2009$yymmdd)

#대기오염측정망 제원 데이터 [도시대기측정망 자료] 불러오기
setwd("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터")
code<-read_excel("도시대기측정망_제원.xlsx",sheet='전체')
cd<-code$code
#도시대기측정망에 해당하는 측정소 코드만 추출
#원시자료에는 도시대기측정망 외에 측정망 포함되어있음
#중간에 생긴 측정망들이 존재하니.. 전체이용 

air2009.r<-sqldf("select * from air2009 where code in (select code from code)")
air2009.r<-subset(air2009,code %in% cd)

air2009.r$yymmdd=ymd(air2009.r$yymmdd) # 날짜형식으로변경 
daily=data.frame(yymmdd=seq(as.Date("2009-01-01"),as.Date("2009-12-31"),by="day"))

#--------------------------------------------------------------------------------#
#측정소별 AP 산출 
ap_list=NULL
key<-unique(air2009.r$code)
for(i in 1:length(key)) {
  dat<-subset(air2009.r,code==key[i])
  a<-sqldf("select mkey,count(SO2) as so2_count,count(CO) as co_count, count(O3) as o3_count,
           count(no2) as no2_count,count(pm10) as pm10_count from dat group by yymmdd ")
  dat2<-merge(dat,a,by="mkey")
  
  dat_SO2  <- subset(dat2,so2_count >=18)
  dat_NO2  <- subset(dat2,no2_count >=18)
  dat_CO   <- subset(dat2,co_count  >=18)
  dat_O3   <- subset(dat2,o3_count  >=18)
  dat_pm10 <- subset(dat2,pm10_count>=18) #일 측정 75% 이상 관측 데이터 추출
  
  #측정소별 일별 평균 대기오염 자료+ PM2.5, PM10 계산 (산술평균)
  daily_so2 <-sqldf("select mkey,sido,code,yymmdd, avg(SO2)  as daily_SO2  from dat_SO2  group by mkey")
  daily_no2 <-sqldf("select mkey,sido,code,yymmdd, avg(NO2)  as daily_NO2  from dat_NO2  group by mkey")
  daily_co  <-sqldf("select mkey,sido,code,yymmdd, avg(CO)   as daily_CO   from dat_CO   group by mkey")
  daily_o3  <-sqldf("select mkey,sido,code,yymmdd, avg(O3)   as daily_O3   from dat_O3   group by mkey")
  daily_pm10<-sqldf("select mkey,sido,code,yymmdd, avg(PM10) as daily_PM10 from dat_pm10 group by mkey")
  
  #2009-01-01 ~ 2009-12-31 일별 날짜와 merge 하여 결측값은 NA , N=365
  
  so2 <-merge(daily,daily_so2 ,by="yymmdd",all.x=T) 
  no2 <-merge(daily,daily_no2 ,by="yymmdd",all.x=T) 
  co  <-merge(daily,daily_co  ,by="yymmdd",all.x=T) 
  o3  <-merge(daily,daily_o3  ,by="yymmdd",all.x=T) 
  pm10<-merge(daily,daily_pm10,by="yymmdd",all.x=T) 
  
  m<-merge(pm10,so2,all=T)
  m<-merge(m,no2   ,all=T)
  m<-merge(m,co    ,all=T)
  m<-merge(m,o3    ,all=T)
  
  ap_list[[i]]<-m  #리스트로 측정소별 대기오염 농도
  print(i)}

ap_dat<-as.data.frame(do.call(rbind,ap_list)) # data.frame으로 전환 
ap_dat<-ap_dat[complete.cases(ap_dat$mkey),]

#--------------------------------------------------------------------------------#
#전국일평균 계산 
total_ap<-sqldf("select yymmdd, avg(daily_pm10) as PM10, avg(daily_SO2) as SO2, 
                avg(daily_NO2) as NO2, avg(daily_CO) as CO, avg(daily_O3) as O3 from ap_dat group by yymmdd")
#--------------------------------------------------------------------------------#
#시도별 일평균계산
ap_dat$sido2=substr(ap_dat$sido,1,2)
sido_key=unique(ap_dat$sido2)

sido_ap_list=NULL
for(i in 1: length(sido_key)){
  head(ap_dat)
  sido_dat<-subset(ap_dat,sido2==sido_key[[i]])
  sido_dat2<-sqldf("select yymmdd, sido2 as sido, avg(daily_pm10) as PM10, 
                   avg(daily_SO2) as SO2, avg(daily_NO2) as NO2, avg(daily_CO) as CO, avg(daily_O3) as O3 from sido_dat group by yymmdd")
  sido_ap_list[[i]]<-sido_dat2
  print(i) }
sido_ap_dat<-do.call(rbind,sido_ap_list)

names(ap_dat)[c(1,5:9)]=c('date','PM10',"SO2","NO2","CO","O3")
names(sido_ap_dat)[1]='date'
names(total_ap)[1]="date"

#--------------------------------------------------------------------------------#
#데이터 내보내기 
setwd("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2009")
write.csv(ap_dat,file="ap_dat.csv",row.names=F,na="")
write.csv(total_ap,file="total_ap.csv",row.names=F,na="")
write.csv(sido_ap_dat,file="sido_ap_dat.csv",row.names=F,na="")







