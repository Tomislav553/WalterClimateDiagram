# WalterClimateDiagram
Walter diagram from average monthly temperature and precipitation data

The script for Walter-Leith climate diagrams using only mean monthly temperature and precipitation data. The scripts are made in R language using **ggclimat_walter_lieth** function from **climaemet** library, with slight modifications to the input data.

There are two different scripts that do the same thing. The *Walter.R* script takes the limited mean monthly data from an .xlsx file, imports it, and produces 30 climate diagrams for main meteorological stations in Croatia. The *Walter_SingleStation.R* script uses the same function, but instead you need to manually input the data, making it more convenient if you have less organised data.

Note about changes to the input data:

The documentation for **ggclimat_walter_lieth** requires the following data format:
 - Mean monthly precipitation
 - Mean maximum daily temperature
 - Mean minimum daily temperature
 - Absolute monthly minimum temperature
