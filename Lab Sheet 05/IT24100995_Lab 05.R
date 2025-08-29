#01
setwd("C:\\Users\\it24100995\\Desktop\\IT24100995")
getwd()
Delivery_Times<-read.table("Exercise - Lab 05.txt",header = TRUE,sep=",")
attach(Delivery_Times)
fix(Delivery_Times)
names(Delivery_Times)<-c("DeliveryTimes")

#02
attach(Delivery_Times)
histogram<-hist(DeliveryTimes,main="Histogram for deliver times",breaks=seq(20,70,length=10),right=FALSE)

#03
#The histogram shows a slightly right-skewed distribution, with a higher frequency of delivery times in the range of 30–50 minutes.
#There are fewer observations above 60 minutes.

#04
breaks<-round(histogram$breaks)

##Assign class frequencies of the histogram
freq<-histogram$mids

##cumulative frequencies
cum.freq<-cumsum(freq)

##creating a null variable
new<-c()

##store cumulative frequencies in order to get the ogive
for (i in 1:length(breaks)){
  if (i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]}
}

#Draw cumulative frequency polygon
plot(breaks,new,type='l',main="cumulative Frequwncy polygon for Delivery times",xlab="Minutes",ylab="cumulative Frequency",ylim=c(0,max(cum.freq)))
