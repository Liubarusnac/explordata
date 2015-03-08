#reading the file
hpc<-read.table("household_power_consumption.txt",header=TRUE, na.strings="?", sep=";")
str(hpc)
#creating DateTime variable (Date+Time)
names(hpc)
hpc_s<-hpc[(hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007"),]
#Date format
hpc_s$DateTime<-strptime(paste(hpc_s$Date, hpc_s$Time), "%d/%m/%Y %H:%M:%S")
head(hpc_s)

#creting the png file
png("plot1.png")
# drowing the histograme
hist(hpc_s$Global_active_power,  xlab="Global Active Power (in kilowatts)", col="red", main="Global Active Power")
dev.off()

