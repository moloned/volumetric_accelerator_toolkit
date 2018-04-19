#!/bin/bash

#CRS="PROJCS["NAD_1983_HARN_Oregon_Statewide_Lambert_Feet_Intl",GEOGCS["GCS_North_American_1983_HARN",DATUM["D_North_American_1983_HARN",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Lambert_Conformal_Conic"],PARAMETER["False_Easting",1312335.958005249],PARAMETER["False_Northing",0.0],PARAMETER["Central_Meridian",-120.5],PARAMETER["Standard_Parallel_1",43.0],PARAMETER["Standard_Parallel_2",45.5],PARAMETER["Latitude_Of_Origin",41.75],UNIT["Foot",0.3048]]"

CRS="PROJCS["NAD_1983_HARN_Oregon_Statewide_Lambert_Feet_Intl",GEOGCS["GCS_North_American_1983_HARN",DATUM["D_North_American_1983_HARN",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Lambert_Conformal_Conic"],PARAMETER["False_Easting",1312335.958005249],PARAMETER["False_Northing",0.0],PARAMETER["Central_Meridian",-120.5],PARAMETER["Standard_Parallel_1",43.0],PARAMETER["Standard_Parallel_2",45.5],PARAMETER["Latitude_Of_Origin",41.75],UNIT["Foot",0.3048],AUTHORITY["EPSG",2994]]"

find . -maxdepth 1 -name "*.laz" | xargs -I fname pdal translate fname fname.laz --readers.las.spatialreference=$CRS
