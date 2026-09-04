#Code to get Walter diagram from average monthls temperature and precipitation
#This is based on the limited available data (there are no absolute minimum and maximum temperatures)

library(ggplot2)
library(climaemet)
library(readxl)

#setting station name and period - will be visible in the diagram
station = "Krk"
period = "1998-2024"
#mean monthly precipitation
obo = c(108.4,103.8,75.6,71.2,93.3,60.1,52.6,75.9,150.3,165.0,178.7,131.7)
#mean monthly temperature
tmean = c(1.6,7.2,10.1,13.9,18.4,23.2,25.4,25.0,19.9,15.7,11.5,7.9)
#should be absolute minimum temperature to determine possible frost months,
#since we don't have it, we use a row of zeros to prevent errors
tmin=c(rep(0,12))

#creating the data frame
dat=t(data.frame(
  obo,
  tmean, #should be tmax if we had it
  tmean,
  tmin   #should be actual tmin if we had it
)
)

#running the diagram function
ggclimat_walter_lieth(
  dat,
  est = station,
  alt = NA,
  per = period,
  mlab = "en",
  pcol = "#002F70",
  tcol = "#ff0000",
  pfcol = "#9BAEE2",
  sfcol = "#3C6FC4",
  shem = FALSE,
  p3line = FALSE,
)

#saving the diagram as .png
ggsave(filename=paste(station,period,".png"),width = 16,height = 10, units = "cm")

