#Code for making Walter climate diagrams from average monthly temperature and precipitation
#The data should be provided in a separate .xlsx file, included in the repository
#Feel free to change the input method, this was the easiest for my application

library(ggplot2)
library(climaemet)
library(readxl)

#reading data
mtempdat = read_excel("Klimatoloski_Podaci_R.xlsx", sheet = 1, col_types = ("numeric"))
mobodat = read_excel("Klimatoloski_Podaci_R.xlsx", sheet = 2, col_types = ("numeric"))
mtemp = read_excel("Klimatoloski_Podaci_R.xlsx", sheet = 1)

#Data is not complete, we don't have actual tmin used for determining frost months, therefore we make a separate array to correct that
tmin=c(rep(0,12))

x=0
for (x in 1:30) {
  #setting up the data for the walter-leith function
  dat=t(data.frame(
    t(mobodat[x,2:13]),
    t(mtempdat[x,2:13]),
    t(mtempdat[x,2:13]),
    tmin
)
)

ggclimat_walter_lieth(
  dat,
  est = mtemp[x,1], #station name
  alt = NA, #altitude (not available for my stations)
  per = "1995-2024", #period
  mlab = "en",
  pcol = "#002F70",
  tcol = "#ff0000",
  pfcol = "#9BAEE2",
  sfcol = "#3C6FC4",
  shem = FALSE,
  p3line = FALSE,
)
name=mtemp[x,1]
ggsave(filename=paste(name,"1995-2024.png"),width = 16,height = 10, units = "cm")

}








