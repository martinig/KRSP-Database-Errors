/*
** Keep track of changes made to fix errors to longterm data 'krsp' following the 2018 season
*/
BEGIN;

########################################################################################################
###### LINGERING ERRORS TO BE SOLVED

# These errors were sent to Ainsley on Feb 7, 2018 to see if she could sleuth some of them.

#1. Problems since unable to find 2010 nest binders
# still need to find litter 4662 9F5304/05 (2010-09-12) and verify ln=1? (should be more)
# still need to double check dates on 4944 (F5685/-) (2010-05-12)
# Litter #318,332,563,607 have tagDT dates before date1 


###### (Jan 2017 errors found)
#Check Nest2 date for C1. on CH in 2011
# Check Nest2 date for AG S9 2006
#Check Nest2 date for JO s10. in 2010
#Check dates on CH 2008 Q0
#Check dates on SU 2008 L.14 (mom 8398 = D7336/7)
#Check dates for Litter ID 1402

#Many weights incorrect (>50) these are the same as tagWts and should actually be in the tagWt column


# Litter id = 4511 juvenile squirrel id = 11227 (LL 2009 -20) weight and tagwt are incorrect - fix?	
# Litter id = 6109 juvenile squirrel id = 12907 (AG 2015 F.8.) tagwt for pup seems incorrect	
# Litter id = 4407 problems with date1 or fieldBdate or tagDt	 Check	probably date1	 I kept fieldBdate but deleted Growt		
# Litter id = 2396	seems to be only a tagDt and this is equal to fieldBdate				Check	deleted fieldBdate
# Litter id = 2424	seems to be only a tagDt and this is equal to fieldBdate				Check	deleted fieldBdate
# Litter id = 1489	seems to be only a tagDt and this is equal to fieldBdate				Check	deleted fieldBdate
# Litter id = 4977	problem with tagDt					
# Litter id = 4773	problem with tagDt					
# Litter id = 4077	problem w tagDt		
# Litter id = 4580	problem w fieldBdate  Check	
# Litter id = 2694	problem with fieldBdate and date1 (KL 2001 0.2.)				Trapping suggests birth date should have been around 2001-06-11	
# Litter id = 2772	problem with fieldBdate				trapping says it should be between 2001-05-16 and 2001-05-22	
# Litter id = 1370	problem with fieldBdate				trapping can't confirm.  If based on weight then should be perhaps 1996-04-18 or 1996-04-22	
# Litter id = 4077	seems like two litters are mashed together here into the same litter id - SUSPECT ALL DATA	
# Litter id = 5032	seems like two litters are mashed together here into the same litter id - SUSPECT ALL DATA	
# Litter id = 3226	seems like two litters are mashed together here into the same litter id - SUSPECT ALL DATA	
# Litter id = 921	fieldBdate seems incorrect and should be checked.  Perhaps also TagDt	
# Litter id = 4494	tagDt is incorrect	
# Litter id = 4585	tagDt is incorrect	
# Litter id = 1893	tagDt is incorrect	
# Litter id = 1793	tagDt is incorrect	
############################################################################################

#############################
# Cleanup after 2018 season #
#############################


# Merge 23335 > 12172;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 12172 AND s2.id = 23335;

UPDATE trapping SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE behaviour SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE census SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE litter SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE juvenile SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE dbaAdmums SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE dbaBehaviour SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE dbaFLastAll SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE dbaJuvenile SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE dbaMidden SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE dbaTrapping SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE pedigree SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE pedigree SET dam_id = 12172 WHERE dam_id = 23335;
UPDATE pedigree SET sire_id = 12172 WHERE sire_id = 23335;
UPDATE pedigree_clean SET squirrel_id = 12172 WHERE squirrel_id = 23335;
UPDATE pedigree_clean SET dam_id = 12172 WHERE dam_id = 23335;
UPDATE pedigree_clean SET sire_id = 12172 WHERE sire_id = 23335;

DELETE FROM squirrel
WHERE id = 23335;


# Merge 23342 > 22016;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 22016 AND s2.id = 23342;

UPDATE trapping SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE behaviour SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE census SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE litter SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE juvenile SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE dbaAdmums SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE dbaBehaviour SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE dbaFLastAll SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE dbaJuvenile SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE dbaMidden SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE dbaTrapping SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE pedigree SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE pedigree SET dam_id = 22016 WHERE dam_id = 23342;
UPDATE pedigree SET sire_id = 22016 WHERE sire_id = 23342;
UPDATE pedigree_clean SET squirrel_id = 22016 WHERE squirrel_id = 23342;
UPDATE pedigree_clean SET dam_id = 22016 WHERE dam_id = 23342;
UPDATE pedigree_clean SET sire_id = 22016 WHERE sire_id = 23342;

DELETE FROM squirrel
WHERE id = 23342;

# Merge 23345 > 22699;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 22699 AND s2.id = 23345;

UPDATE trapping SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE behaviour SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE census SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE litter SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE juvenile SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE dbaAdmums SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE dbaBehaviour SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE dbaFLastAll SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE dbaJuvenile SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE dbaMidden SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE dbaTrapping SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE pedigree SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE pedigree SET dam_id = 22699 WHERE dam_id = 23345;
UPDATE pedigree SET sire_id = 22699 WHERE sire_id = 23345;
UPDATE pedigree_clean SET squirrel_id = 22699 WHERE squirrel_id = 23345;
UPDATE pedigree_clean SET dam_id = 22699 WHERE dam_id = 23345;
UPDATE pedigree_clean SET sire_id = 22699 WHERE sire_id = 23345;

DELETE FROM squirrel
WHERE id = 23345;


# Merge 23349 > 22876;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 22876 AND s2.id = 23349;

UPDATE trapping SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE behaviour SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE census SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE litter SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE juvenile SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE dbaAdmums SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE dbaBehaviour SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE dbaFLastAll SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE dbaJuvenile SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE dbaMidden SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE dbaTrapping SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE pedigree SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE pedigree SET dam_id = 22876 WHERE dam_id = 23349;
UPDATE pedigree SET sire_id = 22876 WHERE sire_id = 23349;
UPDATE pedigree_clean SET squirrel_id = 22876 WHERE squirrel_id = 23349;
UPDATE pedigree_clean SET dam_id = 22876 WHERE dam_id = 23349;
UPDATE pedigree_clean SET sire_id = 22876 WHERE sire_id = 23349;

DELETE FROM squirrel
WHERE id = 23349;


#Merge 23350 > 20315;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 20315 AND s2.id = 23350;

UPDATE trapping SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE behaviour SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE census SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE litter SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE juvenile SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE dbaAdmums SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE dbaBehaviour SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE dbaFLastAll SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE dbaJuvenile SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE dbaMidden SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE dbaTrapping SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE pedigree SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE pedigree SET dam_id = 20315 WHERE dam_id = 23350;
UPDATE pedigree SET sire_id = 20315 WHERE sire_id = 23350;
UPDATE pedigree_clean SET squirrel_id = 20315 WHERE squirrel_id = 23350;
UPDATE pedigree_clean SET dam_id = 20315 WHERE dam_id = 23350;
UPDATE pedigree_clean SET sire_id = 20315 WHERE sire_id = 23350;

DELETE FROM squirrel
WHERE id = 23350;


#Merge 23352 > 12428;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 12428 AND s2.id = 23352;

UPDATE trapping SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE behaviour SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE census SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE litter SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE juvenile SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE dbaAdmums SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE dbaBehaviour SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE dbaFLastAll SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE dbaJuvenile SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE dbaMidden SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE dbaTrapping SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE pedigree SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE pedigree SET dam_id = 12428 WHERE dam_id = 23352;
UPDATE pedigree SET sire_id = 12428 WHERE sire_id = 23352;
UPDATE pedigree_clean SET squirrel_id = 12428 WHERE squirrel_id = 23352;
UPDATE pedigree_clean SET dam_id = 12428 WHERE dam_id = 23352;
UPDATE pedigree_clean SET sire_id = 12428 WHERE sire_id = 23352;

DELETE FROM squirrel
WHERE id = 23352;


#Merge 23427 > 22814;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 22814 AND s2.id = 23427;

UPDATE trapping SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE behaviour SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE census SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE litter SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE juvenile SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE dbaAdmums SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE dbaBehaviour SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE dbaFLastAll SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE dbaJuvenile SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE dbaMidden SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE dbaTrapping SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE pedigree SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE pedigree SET dam_id = 22814 WHERE dam_id = 23427;
UPDATE pedigree SET sire_id = 22814 WHERE sire_id = 23427;
UPDATE pedigree_clean SET squirrel_id = 22814 WHERE squirrel_id = 23427;
UPDATE pedigree_clean SET dam_id = 22814 WHERE dam_id = 23427;
UPDATE pedigree_clean SET sire_id = 22814 WHERE sire_id = 23427;

DELETE FROM squirrel
WHERE id = 23427;


#Merge 23459 > 12194;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 12194 AND s2.id = 23459;

UPDATE trapping SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE behaviour SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE census SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE litter SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE juvenile SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE dbaAdmums SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE dbaBehaviour SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE dbaFLastAll SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE dbaJuvenile SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE dbaMidden SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE dbaTrapping SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE pedigree SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE pedigree SET dam_id = 12194 WHERE dam_id = 23459;
UPDATE pedigree SET sire_id = 12194 WHERE sire_id = 23459;
UPDATE pedigree_clean SET squirrel_id = 12194 WHERE squirrel_id = 23459;
UPDATE pedigree_clean SET dam_id = 12194 WHERE dam_id = 23459;
UPDATE pedigree_clean SET sire_id = 12194 WHERE sire_id = 23459;

DELETE FROM squirrel
WHERE id = 23459;



#Merge 23460 > 23193;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 23193 AND s2.id = 23460;

UPDATE trapping SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE behaviour SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE census SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE litter SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE juvenile SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE dbaAdmums SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE dbaBehaviour SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE dbaFLastAll SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE dbaJuvenile SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE dbaMidden SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE dbaTrapping SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE pedigree SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE pedigree SET dam_id = 23193 WHERE dam_id = 23460;
UPDATE pedigree SET sire_id = 23193 WHERE sire_id = 23460;
UPDATE pedigree_clean SET squirrel_id = 23193 WHERE squirrel_id = 23460;
UPDATE pedigree_clean SET dam_id = 23193 WHERE dam_id = 23460;
UPDATE pedigree_clean SET sire_id = 23193 WHERE sire_id = 23460;

DELETE FROM squirrel
WHERE id = 23460;



#Merge 23476 > 19992;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 19992 AND s2.id = 23476;

UPDATE trapping SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE behaviour SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE census SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE litter SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE juvenile SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE dbaAdmums SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE dbaBehaviour SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE dbaFLastAll SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE dbaJuvenile SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE dbaMidden SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE dbaTrapping SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE pedigree SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE pedigree SET dam_id = 19992 WHERE dam_id = 23476;
UPDATE pedigree SET sire_id = 19992 WHERE sire_id = 23476;
UPDATE pedigree_clean SET squirrel_id = 19992 WHERE squirrel_id = 23476;
UPDATE pedigree_clean SET dam_id = 19992 WHERE dam_id = 23476;
UPDATE pedigree_clean SET sire_id = 19992 WHERE sire_id = 23476;

DELETE FROM squirrel
WHERE id = 23476;


#Merge 23803 > 20291;

UPDATE
	squirrel		AS s1,
	squirrel		AS s2
SET
	s1.census_date = s2.census_date,
	s1.colorlft = s2.colorlft,
	s1.colorrt = s2.colorrt,
	s1.last_updated = s2.last_updated,
	s1.locx = s2.locx, s1.locy = s2.locy,
	s1.taglft = s2.taglft, s1.tagrt = s2.tagrt,
	s1.trap_date = s2.trap_date
WHERE s1.id = 20291 AND s2.id = 23803;

UPDATE trapping SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE behaviour SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE census SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE litter SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE juvenile SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE dbaAdmums SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE dbaBehaviour SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE dbaFLastAll SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE dbaJuvenile SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE dbaMidden SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE dbaTrapping SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE pedigree SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE pedigree SET dam_id = 20291 WHERE dam_id = 23803;
UPDATE pedigree SET sire_id = 20291 WHERE sire_id = 23803;
UPDATE pedigree_clean SET squirrel_id = 20291 WHERE squirrel_id = 23803;
UPDATE pedigree_clean SET dam_id = 20291 WHERE dam_id = 23803;
UPDATE pedigree_clean SET sire_id = 20291 WHERE sire_id = 23803;

DELETE FROM squirrel
WHERE id = 23803;

#################################################
# Cleanup based on issues found during the year #
#################################################

##  Many duplicate trapping records - exactly the same except for trapping record id

-- create a new table to hold duplicates
CREATE TABLE trapping_nodupes LIKE trapping; 
-- populate with de-duped records
INSERT INTO trapping_nodupes
SELECT *
FROM trapping
WHERE
	squirrel_id IS NOT NULL
GROUP BY
	bagWt,
	rattle,
	collar,
	collWt,
	color_fate,
	color_left,
	color_left,
	color_right,
	comments,
	date,
	dna1,
	dna2,
	ft,
	radio,
	gr,
	locx,
	locy,
	nipple,
	obs,
	rep_con,
	scale_weight,
	sex,
	squirrel_id,
	wgt,
	tagLft,
	tagRt;
-- delete original table
DROP TABLE trapping;
-- replace with de-duped table
RENAME TABLE trapping_nodupes TO trapping;


# Trapping ID 48081 has the wrong date. It is currently listed as 2001-05-01 but should be 2010-05-01.
UPDATE trapping
SET date = "2010-05-01"
WHERE id = 48081;

#When incorporating cross-fostering data into the pedigree I found 4 errors in the assignment of litter ids in the juvenile table.
#for squirrel_id 4367 litter_id should be changed from 2209 to 2205
#for squirrel_id 3934 litter_id should be changed from 2205 to 2209
#for squirrel_id 4249 litter_id should be changed from 2159 to 2181
#for squirrel_id 4034 litter_id should be changed from 2181 to 2159

UPDATE juvenile
SET litter_id = 2205
WHERE squirrel_id = 4367 AND litter_id = 2209;

UPDATE juvenile
SET litter_id = 2209
WHERE squirrel_id = 3934 AND litter_id = 2205;

UPDATE juvenile
SET litter_id = 2181
WHERE squirrel_id = 4249 AND litter_id = 2159;

UPDATE juvenile
SET litter_id = 2159
WHERE squirrel_id = 4034 AND litter_id = 2181;

