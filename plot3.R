#drowing the plot3
> png("plot3.png")
> plot(hpc_s$DateTime, hpc_s$Sub_metering_1, type="l",xlab="", ylab="Energy sub metering")
> points(hpc_s$DateTime, hpc_s$Sub_metering_2, type="l", col="red")
> points(hpc_s$DateTime, hpc_s$Sub_metering_3, type="l", col="blue")
> legend("topright", col=c("black","red","blue"), pch=c("___","___","___"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
> dev.off()
