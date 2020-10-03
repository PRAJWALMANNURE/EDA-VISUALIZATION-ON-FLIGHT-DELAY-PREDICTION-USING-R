#loading the required packages
library(readr) # for reading files
library(ggthemes) # themes for visualization
library(ggplot2) # for visualization
library(plotly) # for seeing particular point on the plots/graphs
library(dplyr)

#Loading The Data Set

f1<-read.csv(file.choose()) 
flights<- sample_n(f1,2000000)
View(flights)

#########  Exploratory Data Analysis  ####################################

summary(flights)
str(flights)

############### scatter plot  ###############
ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=SCHEDULED_DEPARTURE,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure dealay vs scheduled departure'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=DEPARTURE_TIME,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs Departure Time'))

ggplotly(ggplot(data = flights,aes(y=ARRIVAL_DELAY,x=DEPARTURE_DELAY,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs Departure delay'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=TAXI_OUT,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs TAXI_OUT'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=WHEELS_OFF,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs WHEELS_OFF'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=SCHEDULED_TIME,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs SCHEDULED_TIME'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=ELAPSED_TIME,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs ELAPSED_TIME'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=AIR_TIME,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs AIR_TIME'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=DISTANCE,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs DISTANCE'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=WHEELS_ON,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs WHEELS_ON'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=TAXI_IN,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs TAXI_IN'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=SCHEDULED_ARRIVAL,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs SCHEDULED_ARRIVAL'))

ggplotly(ggplot(data = flights,aes(y=DEPARTURE_DELAY,x=ARRIVAL_TIME,col=AIRLINE))+
           geom_point()+theme_economist()+ggtitle('Departure delay vs ARRIVAL_TIME'))


######### HISTOGRAM ###########################

ggplotly(ggplot(flights,aes(WHEELS_ON,fill=AIRLINE))+geom_histogram()+
  ggtitle('Wheels on Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,2400)))


ggplotly(ggplot(flights,aes(WHEELS_OFF,fill=AIRLINE))+geom_histogram()+
  ggtitle('Wheels off Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,2400)))


ggplotly(ggplot(flights,aes(SCHEDULED_ARRIVAL,fill=AIRLINE))+geom_histogram()+
  ggtitle('Scheduled Arival Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,2400)))


ggplotly(ggplot(flights,aes(ARRIVAL_TIME,fill=AIRLINE))+geom_histogram()+
  ggtitle(' Arival Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,2400)))


ggplotly(ggplot(flights,aes(TAXI_IN,fill=AIRLINE))+geom_histogram()+
  ggtitle(' Taxi-In Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,100)))

ggplotly(ggplot(flights,aes(TAXI_OUT,fill=AIRLINE))+geom_histogram()+
  ggtitle(' Taxi-out Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,150)))


ggplotly(ggplot(flights,aes(SCHEDULED_DEPARTURE,fill=AIRLINE))+geom_histogram()+
  ggtitle('Scheduled Departure Timings & counts ')+theme_economist()+
  scale_x_continuous(limits = c(0,2359)))


ggplotly(ggplot(flights,aes(DEPARTURE_TIME,fill=AIRLINE))+geom_histogram()+
  ggtitle('Departure Timings & Counts')+theme_economist()+
  scale_x_continuous(limits = c(0,2359)))


ggplotly(ggplot(flights,aes(DEPARTURE_DELAY,fill=AIRLINE))+geom_histogram()+
  ggtitle('Departure delay Counts based on airlines')+theme_economist()+
  scale_x_continuous(limits = c(-100,100)))

ggplotly(ggplot(flights,aes(ARRIVAL_DELAY,fill=AIRLINE))+geom_histogram()+
  ggtitle('Arrival delay Counts based on airlines')+theme_economist()+
    scale_x_continuous(limits = c(-100,100)))






