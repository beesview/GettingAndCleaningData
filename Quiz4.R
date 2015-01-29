library(sqldf)

fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "fss.csv")
dateDownloaded <- date()
fss <- read.table("./fss.csv",sep=",",header=TRUE)
strsplit(names(fss),"wgtp")[123]

Q1: ""   "15"

fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileUrl, destfile = "gdp.csv")
dateDownloaded <- date()
gdp <- read.csv("./gdp.csv",sep=",",header=TRUE)
names(gdp)
head(gdp)
gdp[,5] = gsub(",","",gdp[,5])
g<-gdp[5:194,]
mean(as.numeric(as.character(g[,5]))[!is.na(as.numeric(as.character(g[,5])))])

Q2: 377652.4

names(gdp)[4] <- "countryNames"
countryNames<-gdp$countryNames
grep("^United",countryNames)

Q3: grep("^United",countryNames), 3

fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileUrl, destfile = "gdp.csv")
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileUrl, destfile = "edu.csv")
dateDownloaded <- date()
edu <- read.csv("./edu.csv",sep=",",header=TRUE)

gdp<-gdp[5:194,c(1,2,4,5)]
names(gdp)[1] <- "CountryCode"

e<-edu[grep("Fiscal year end: June",e1$Special.Notes),c(1,10)]

m=as.data.frame(merge(gdp,e,by.x="CountryCode",by.y="CountryCode"))

Q4: 13

library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
length(grep("2012",sampleTimes))

library(lubridate)
days<-sampleTimes[grep("2012",sampleTimes)]
length(grep("Monday",weekdays(ymd(days))))

Q5: 250, 47
