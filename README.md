# WalterClimateDiagram
Walter diagram from average monthly temperature and precipitation data

The script for Walter-Leith climate diagrams using only mean monthly temperature and precipitation data. The scripts are made in R language using **ggclimat_walter_lieth** function from **climaemet** library, with slight modifications to the input data.

There are two different scripts that do the same thing. The *Walter.R* script takes the limited mean monthly data from an .xlsx file, imports it, and produces 30 climate diagrams for main meteorological stations in Croatia. The *Walter_SingleStation.R* script uses the same function, but instead you need to manually input the data, making it more convenient if you have less organised data.

Note about changes to the input data:

The documentation for **ggclimat_walter_lieth** requires the following data format:
 - Mean monthly precipitation,
 - Mean maximum daily temperature,
 - Mean minimum daily temperature,
 - Absolute monthly minimum temperature.

The available data only contained mean monthly temperature, so I used that to make the diagrams instead. They still provide valuable information and the code still works well, but if you have actual mean max and min and absolute min temperatures, please use them instead. My input array is actually in this format:
 - Mean monthly precipitation,
 - Mean monthly temperature,
 - Mean monthly temperature,
 - Array of 12 zeros.

The array of zeros is here to avoid any errors that occurred during testing the code.

Here is an example of the climate diagram produced using the code.

![Climate diagram for Puntijarka station from 1995. to 2024.](./Puntijarka%201995-2024%20.png)
