#--------------------------------------------------------------------------------------------------#
#--------------------------------------------------------------------------------------------------#
#library
pacman::p_load("readxl","sqldf","dplyr","lubridate")


#--------------------------------------------------------------------------------------------------#
#--------------------------------------------------------------------------------------------------#
dat06_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2006\\2006년01분기.xlsx")
dat06_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2006\\2006년02분기.xlsx")
dat06_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2006\\2006년03분기.xlsx")
dat06_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2006\\2006년04분기.xlsx")

dat07_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2007\\2007년01분기.xlsx")
dat07_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2007\\2007년02분기.xlsx")
dat07_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2007\\2007년03분기.xlsx")
dat07_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2007\\2007년04분기.xlsx")

dat08_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2008\\2008년01분기.xlsx")
dat08_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2008\\2008년02분기.xlsx")
dat08_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2008\\2008년03분기.xlsx")
dat08_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2008\\2008년04분기.xlsx")

dat09_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2009\\2009년01분기.xlsx")
dat09_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2009\\2009년02분기.xlsx")
dat09_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2009\\2009년03분기.xlsx")
dat09_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2009\\2009년04분기.xlsx")

dat10_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2010\\2010년01분기.xlsx")
dat10_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2010\\2010년02분기.xlsx")
dat10_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2010\\2010년03분기.xlsx")
dat10_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2010\\2010년04분기.xlsx")

dat11_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2011\\2011년01분기.xlsx")
dat11_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2011\\2011년02분기.xlsx")
dat11_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2011\\2011년03분기.xlsx")
dat11_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2011\\2011년04분기.xlsx")

dat12_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2012\\2012년01분기.xlsx")
dat12_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2012\\2012년02분기.xlsx")
dat12_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2012\\2012년03분기.xlsx")
dat12_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2012\\2012년04분기.xlsx")

dat13_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2013\\2013년01분기.xlsx")
dat13_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2013\\2013년02분기.xlsx")
dat13_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2013\\2013년03분기.xlsx")
dat13_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2013\\2013년04분기.xlsx")

dat14_01<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2014\\2014년 1분기.csv")
dat14_02<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2014\\2014년 2분기.csv")
dat14_03<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2014\\2014년 3분기.csv")
dat14_04<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2014\\2014년 4분기.csv")

dat15_01<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2015\\2015년 1분기.csv")
dat15_02<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2015\\2015년 2분기.csv")
dat15_03<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2015\\2015년 3분기.csv")
dat15_04<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2015\\2015년 4분기.csv")

dat16_01<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2016\\2016년 1분기.csv")
dat16_02<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2016\\2016년 2분기.csv")
dat16_03<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2016\\2016년 3분기.csv")
dat16_04<-read.csv("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2016\\2016년 4분기.csv")

dat17_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2017\\2017년 1분기.xlsx")
dat17_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2017\\2017년 2분기.xlsx")
dat17_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2017\\2017년 3분기.xlsx")
dat17_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2017\\2017년 4분기.xlsx")

dat18_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2018\\2018년 1분기.xlsx")
dat18_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2018\\2018년 2분기.xlsx")
dat18_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2018\\2018년 3분기.xlsx") %>% filter(망=="도시대기") %>% select(-망)
dat18_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2018\\2018년 4분기.xlsx") %>% filter(망=="도시대기") %>% select(-망)

dat19_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 1월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 2월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 3월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 4월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)  
dat19_05<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 5월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_06<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 6월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_07<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 7월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_08<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 8월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_09<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 9월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat19_10<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 10월.xlsx") %>% filter(망=="도시대기") %>% select(-망) 
dat19_11<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 11월.xlsx") %>% filter(망=="도시대기") %>% select(-망)
dat19_12<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2019\\2019년 12월.xlsx") %>% filter(망=="도시대기") %>% select(-망)

dat20_01<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 1월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_02<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 2월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_03<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 3월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_04<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 4월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_05<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 5월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_06<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 6월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_07<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 7월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_08<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 8월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_09<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 9월.xlsx")  %>% filter(망=="도시대기") %>% select(-망)
dat20_10<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 10월.xlsx") %>% filter(망=="도시대기") %>% select(-망) 
dat20_11<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 11월.xlsx") %>% filter(망=="도시대기") %>% select(-망)
dat20_12<-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\2020\\2020년 12월.xlsx") %>% filter(망=="도시대기") %>% select(-망)

dat06<-bind_rows(dat06_01,dat06_02,dat06_03,dat06_04);rm(dat06_01);rm(dat06_02);rm(dat06_03);rm(dat06_04)
dat07<-bind_rows(dat07_01,dat07_02,dat07_03,dat07_04);rm(dat07_01);rm(dat07_02);rm(dat07_03);rm(dat07_04)
dat08<-bind_rows(dat08_01,dat08_02,dat08_03,dat08_04);rm(dat08_01);rm(dat08_02);rm(dat08_03);rm(dat08_04)
dat09<-bind_rows(dat09_01,dat09_02,dat09_03,dat09_04);rm(dat09_01);rm(dat09_02);rm(dat09_03);rm(dat09_04)
dat10<-bind_rows(dat10_01,dat10_02,dat10_03,dat10_04);rm(dat10_01);rm(dat10_02);rm(dat10_03);rm(dat10_04)
dat11<-bind_rows(dat11_01,dat11_02,dat11_03,dat11_04);rm(dat11_01);rm(dat11_02);rm(dat11_03);rm(dat11_04)
dat12<-bind_rows(dat12_01,dat12_02,dat12_03,dat12_04);rm(dat12_01);rm(dat12_02);rm(dat12_03);rm(dat12_04)
dat13<-bind_rows(dat13_01,dat13_02,dat13_03,dat13_04);rm(dat13_01);rm(dat13_02);rm(dat13_03);rm(dat13_04)
dat14<-bind_rows(dat14_01,dat14_02,dat14_03,dat14_04);rm(dat14_01);rm(dat14_02);rm(dat14_03);rm(dat14_04)
dat15<-bind_rows(dat15_01,dat15_02,dat15_03,dat15_04);rm(dat15_01);rm(dat15_02);rm(dat15_03);rm(dat15_04)
dat16<-bind_rows(dat16_01,dat16_02,dat16_03,dat16_04);rm(dat16_01);rm(dat16_02);rm(dat16_03);rm(dat16_04)
dat17<-bind_rows(dat17_01,dat17_02,dat17_03,dat17_04);rm(dat17_01);rm(dat17_02);rm(dat17_03);rm(dat17_04)
dat18<-bind_rows(dat18_01,dat18_02,dat18_03,dat18_04);rm(dat18_01);rm(dat18_02);rm(dat18_03);rm(dat18_04)

dat19<-rbind(dat19_01,dat19_02,dat19_03,dat19_04,
             dat19_05,dat19_06,dat19_07,dat19_08,
             dat19_09,dat19_10,dat19_11,dat19_12)
dat20<-rbind(dat20_01,dat20_02,dat20_03,dat20_04,
             dat20_05,dat20_06,dat20_07,dat20_08,
             dat20_09,dat20_10,dat20_11,dat20_12)

index  <-read_excel("D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\도시대기측정망_제원.xlsx",sheet='전체')

index01<-index$yr2001;index02<-index$yr2002;index03<-index$yr2003;index04<-index$yr2004
index05<-index$yr2005;index06<-index$yr2006;index07<-index$yr2007;index08<-index$yr2008
index09<-index$yr2009;index10<-index$yr2010;index11<-index$yr2011;index12<-index$yr2012
index13<-index$yr2013;index14<-index$yr2014;index15<-index$yr2015;index16<-index$yr2016
index17<-index$yr2017;index18<-index$yr2018;index19<-index$yr2019;index20<-index$yr2020

dat06.r<-subset(dat06,측정소코드 %in% index06) %>% select(지역,측정소명,측정일시,O3)
dat07.r<-subset(dat07,측정소코드 %in% index07) %>% select(지역,측정소명,측정일시,O3)
dat08.r<-subset(dat08,측정소코드 %in% index08) %>% select(지역,측정소명,측정일시,O3)
dat09.r<-subset(dat09,측정소코드 %in% index09) %>% select(지역,측정소명,측정일시,O3)
dat10.r<-subset(dat10,측정소코드 %in% index10) %>% select(지역,측정소명,측정일시,O3)
dat11.r<-subset(dat11,측정소코드 %in% index11) %>% select(지역,측정소명,측정일시,O3) 
dat12.r<-subset(dat12,측정소코드 %in% index12) %>% select(지역,측정소명,측정일시,O3)
dat13.r<-subset(dat13,측정소코드 %in% index13) %>% select(지역,측정소명,측정일시,O3)
dat14.r<-subset(dat14,측정소코드 %in% index14) %>% select(지역,측정소명,측정일시,O3)
dat15.r<-subset(dat15,측정소코드 %in% index15) %>% select(지역,측정소명,측정일시,O3)
dat16.r<-subset(dat16,측정소코드 %in% index16) %>% select(지역,측정소명,측정일시,O3)
dat17.r<-subset(dat17,측정소코드 %in% index17) %>% select(지역,측정소명,측정일시,O3)
dat18.r<-subset(dat18,측정소코드 %in% index18) %>% select(지역,측정소명,측정일시,O3)
dat19.r<-subset(dat19,측정소코드 %in% index19) %>% select(지역,측정소명,측정일시,O3)
dat20.r<-subset(dat20,측정소코드 %in% index20) %>% select(지역,측정소명,측정일시,O3)

dat06.r$city=substr(dat06.r$지역,1,2);dat07.r$city=substr(dat07.r$지역,1,2)
dat08.r$city=substr(dat08.r$지역,1,2);dat09.r$city=substr(dat09.r$지역,1,2)
dat10.r$city=substr(dat10.r$지역,1,2);dat11.r$city=substr(dat11.r$지역,1,2)
dat12.r$city=substr(dat12.r$지역,1,2);dat13.r$city=substr(dat13.r$지역,1,2)
dat14.r$city=substr(dat14.r$지역,1,2);dat15.r$city=substr(dat15.r$지역,1,2)
dat16.r$city=substr(dat16.r$지역,1,2);dat17.r$city=substr(dat17.r$지역,1,2)
dat18.r$city=substr(dat18.r$지역,1,2);dat19.r$city=substr(dat19.r$지역,1,2)
dat20.r$city=substr(dat20.r$지역,1,2)

dat06.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat06.r` group by city,datetime")
dat07.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat07.r` group by city,datetime")
dat08.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat08.r` group by city,datetime")
dat09.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat09.r` group by city,datetime")
dat10.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat10.r` group by city,datetime")
dat11.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat11.r` group by city,datetime")
dat12.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat12.r` group by city,datetime")
dat13.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat13.r` group by city,datetime")
dat14.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat14.r` group by city,datetime")
dat15.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat15.r` group by city,datetime")
dat16.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat16.r` group by city,datetime")
dat17.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat17.r` group by city,datetime")
dat18.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat18.r` group by city,datetime")
dat19.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat19.r` group by city,datetime")
dat20.rr<-sqldf("select city,측정일시 as datetime, avg(O3) as O3 from `dat20.r` group by city,datetime")

dat<-rbind(dat06.rr,dat07.rr,dat08.rr,dat09.rr,dat10.rr,
           dat11.rr,dat12.rr,dat13.rr,dat14.rr,dat15.rr,
           dat16.rr,dat17.rr,dat18.rr,dat19.rr,dat20.rr) %>% tibble()

dat$O3=as.numeric(dat$O3)
dat$hour=as.numeric(substr(dat$datetime,9,10))

ozone_city<-function(text){
  
  s<-subset(dat,city==text)
  
  s$lag7=NA;s$lag6=NA;s$lag5=NA;s$lag4=NA
  s$lag3=NA;s$lag2=NA;s$lag1=NA;s$lag0=NA
  
  s$lag0=s$O3       ;s$lag1=lag(s$O3,1)
  s$lag2=lag(s$O3,2);s$lag3=lag(s$O3,3)
  s$lag4=lag(s$O3,4);s$lag5=lag(s$O3,5)
  s$lag6=lag(s$O3,6);s$lag7=lag(s$O3,7)
  
  s$date=ymd(substr(s$datetime,1,8))
  
  #각 구간별로 6시간 이상일 경우 유효 측정 자료로 간주 
  s$ozone_8hours=apply(s %>% select(lag7:lag0),1,mean,na.rm=T)
  s$n=apply(!is.na(s %>% select(lag7:lag0)),1,sum)
  s$ozone_8hours=ifelse(s$n>=6,s$ozone_8hours,NA)
  
  s.df<-tibble(sqldf("select city,date, max(ozone_8hours) as ozone from s group by date"))
  s.df}

ozone_s1 <-ozone_city("서울")
ozone_s2 <-ozone_city("부산")
ozone_s3 <-ozone_city("대구")
ozone_s4 <-ozone_city("인천")
ozone_s5 <-ozone_city("광주")
ozone_s6 <-ozone_city("대전")
ozone_s7 <-ozone_city("울산")
ozone_s8 <-ozone_city("세종")
ozone_s9 <-ozone_city("경기")
ozone_s10<-ozone_city("강원")
ozone_s11<-ozone_city("충북")
ozone_s12<-ozone_city("충남")
ozone_s13<-ozone_city("전북")
ozone_s14<-ozone_city("전남")
ozone_s15<-ozone_city("경북")
ozone_s16<-ozone_city("경남")
ozone_s17<-ozone_city("제주")

ozone_ss<-rbind(ozone_s1,ozone_s2,ozone_s3,ozone_s4,ozone_s5,ozone_s6,ozone_s7,
                ozone_s8,ozone_s9,ozone_s10,ozone_s11,ozone_s12,ozone_s13,ozone_s14,
                ozone_s15,ozone_s16,ozone_s17)

# write.csv(ozone_ss,file="D:\\EUMC\\데이터관리\\Mornitoring_data\\Air_Korea_확정데이터\\ozone_hours_2006_2020.csv",row.names=F,na="")




