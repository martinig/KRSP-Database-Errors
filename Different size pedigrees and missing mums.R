require(krsp)
require(tidyverse)

con = krsp_connect(group = "krsp-aws")

ped=tbl(con, "pedigree") %>% collect() %>%
  select(animal=squirrel_id, sire=sire_id, dam=dam_id) %>%
  filter(!(is.na(animal)))

pedf=tbl(con, "flastall") %>% collect() %>%
  select(animal=squirrel_id, sire=sire_id, dam=dam_id) %>%
  filter(!(is.na(animal)))

nrow(ped)
nrow(pedf) #so this one is twice as large

#Yet its not down to duplicated entries:
pedf  %>%  count(animal) %>% filter(n > 1)

ped  %>% count(animal) %>% filter(n > 1)

#Identifying missing mums

miss.mums.ped = ped %>% filter(!is.na(dam), !(dam %in% animal))  %>%
                                  select(animal=dam) %>% mutate(sire=NA, dam=NA) %>%
                                  group_by(animal) %>% sample_n(1)
#None, so that is good

miss.mums.flall = pedf %>% filter(!is.na(dam), !(dam %in% animal))  %>%
                                  select(animal=dam) %>% mutate(sire=NA, dam=NA) %>%
                                  group_by(animal) %>% sample_n(1)
#19 here

#Do same for dads
miss.dads.ped = ped %>% filter(!is.na(sire), !(sire %in% animal))  %>%
  select(animal=sire) %>% mutate(sire=NA, dam=NA) %>%
  group_by(animal) %>% sample_n(1)
#None, so that is good

miss.dads.flall = pedf %>% filter(!is.na(sire), !(sire %in% animal))  %>%
  select(animal=sire) %>% mutate(sire=NA, dam=NA) %>%
  group_by(animal) %>% sample_n(1)
#1 individual


#These could be row bound to the pedigree:

pedf.all = bind_rows(pedf, miss.mums.flall, miss.dads.flall)
