#Para nuestro proyecto, hay que hacerlo con otra i (homicidios)

rm(list =ls())

library(data.table)

setwd('C:/Users/Admin/Desktop/Rafa/Proyecto final demografía/Demography_9219/data')

dir()
lt <- fread("data_mdlt (1).csv")[-20,]
names(lt)

lt[ , qx_i := qx*(Dx_i/Dx)] #Paso 2

lt[ , dx_i := lx*qx_i] #Paso 3

lt[ , lx_i := rev(cumsum(rev(dx_i)))] #Paso 4 lx_i

lt[ , prx_i := lx_i/lx] #Paso 5

