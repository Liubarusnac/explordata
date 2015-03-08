#creating plot2
> png("plot2.png")
> plot(hpc_s$DateTime, hpc_s$Global_active_power, type="l",xlab="", ylab="Global Active Power (in kilowatts)")
> dev.off()
