-- Wipe Users by can_snoxd
truncate table ACCOUNT_CHAR
truncate table FRIEND_LIST
truncate table HACKTOOL_USERLOG
truncate table KING_BALLOT_BOX
truncate table KING_CANDIDACY_NOTICE_BOARD
truncate table KING_ELECTION_LIST
truncate table KNIGHTS
truncate table KNIGHTS_ALLIANCE
truncate table KNIGHTS_RATING
truncate table KNIGHTS_USER
--truncate table NATION_TRANSFERS (remove the comments if your database contains this table)
truncate table TB_USER
truncate table USER_SAVED_MAGIC
truncate table USERDATA
truncate table USERDATA_SKILLSHORTCUT
truncate table WAREHOUSE
truncate table WEB_ITEMMALL
truncate table HERO_USER

--Clean User Rank Logo Table
update USER_KNIGHTS_RANK
set 
strElmoKnightsName = NULL,
strElmoUserID = NULL,
strKarusKnightsName = NULL,
strKarusUserID = NULL,
nElmoLoyalty = 0,
nKarusLoyalty = 0

--Clean Personal Rank Logo Table
update USER_PERSONAL_RANK
set
strElmoUserID = NULL,
strKarusUserID = NULL,
nElmoLoyaltyMonthly = 0,
nKarusLoyaltyMonthly = 0

--Clean Manner Point Table
update USER_MANNERPOINT_RANK
set
strElmoUserID = NULL,
strKarusUserID = NULL,
nElmoMannerPoint = 0,
nKarusMannerPoint = 0