require(krsp)
require(lubridate)
require(tidyverse)

con = krsp_connect(group = "krsp-aws")

#Data

new.census = tbl(con, "census") %>% collect()

old.census = tbl(con, "dbamidden") %>% collect()

new.censuses = new.census %>% select(id, census_date, squirrel_id,gr,locx,locy)%>% 
  mutate(year=year(census_date),census_x=loc_to_numeric(locx), census_y=loc_to_numeric(locy) )

old.censuses = old.census %>% select(id, census_date=date, squirrel_id,gr=grid,locx=locX,locy=locY)%>% 
  mutate(year=year(census_date),census_x=loc_to_numeric(locx), census_y=loc_to_numeric(locy) )

censuses = rbind(old.censuses,new.censuses)

#Problem

censuses %>% filter(!is.na(locy), is.na(census_y)) 
#15 generate NAs with loc_to_numeric, due to either being blank or not including a ".5"


#note none being in old census is genuine


#Solution

#For those with the reflo listed
new.census$locx[new.census$id==2745] = "G.5"
new.census$locy[new.census$id==2745] = "9.5"

new.census$locx[new.census$id==2994] = "D.5"
new.census$locy[new.census$id==2994] = "6.5"

new.census$locx[new.census$id==2995] = "E.5"
new.census$locy[new.census$id==2995] = "1.5"

new.census$locx[new.census$id==3141] = "A.5"
new.census$locy[new.census$id==3141] = "13.5"

new.census$locx[new.census$id==3228] = "F.5"
new.census$locy[new.census$id==3228] = "20.5"

new.census$locx[new.census$id==3544] = "A.5"
new.census$locy[new.census$id==3544] = "8.5"

new.census$locx[new.census$id==3646] = "K.5"
new.census$locy[new.census$id==3646] = "20.5"

new.census$locy[new.census$id==10247] = "17.5"

#Then those with blanks appear to have it in the comments:
new.census %>%filter(locx=="")


new.census$locx[new.census$id==9875] = "A.0"
new.census$locy[new.census$id==9875] = "5.5"

new.census$locx[new.census$id==9886] = "K.5"
new.census$locy[new.census$id==9886] = "8.0"

new.census$locx[new.census$id==9892] = "K.0"
new.census$locy[new.census$id==9892] = "2.5"

new.census$locx[new.census$id==9894] = "K.5"
new.census$locy[new.census$id==9894] = "7.0"

new.census$locx[new.census$id==9898] = "0.0"
new.census$locy[new.census$id==9898] = "1.5"

new.census$locx[new.census$id==9901] = "0.0"
new.census$locy[new.census$id==9901] = "1.5"

new.census$locx[new.census$id==9904] = "A.0"
new.census$locy[new.census$id==9904] = "4.5"

#Fixed:
new.censuses = new.census %>% select(id, census_date, squirrel_id,gr,locx,locy)%>% 
  mutate(year=year(census_date),census_x=loc_to_numeric(locx), census_y=loc_to_numeric(locy) )

new.censuses %>% filter(!is.na(locy), is.na(census_y)) 
