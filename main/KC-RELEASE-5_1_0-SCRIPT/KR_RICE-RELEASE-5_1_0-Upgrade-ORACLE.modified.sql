set echo on
set define off
set sqlblanklines on
spool KR_RICE-RELEASE-5_1_0-Upgrade-ORACLE-Install.log
@../../current/5.1.0/rice/KR_RICE_01_2.1.0-2.1.2_2012-09-26_B000.sql
@../../current/5.1.0/rice/KR_RICE_02_2.1.0-2.1.2_2012-10-12_B000.sql
@../../current/5.1.0/rice/KR_RICE_03_2.1.0-2.1.2_2012-10-17_B000.sql
@../../current/5.1.0/rice/KR_RICE_04_2.1.0-2.1.2_2012-10-19_B000.sql
@../../current/5.1.0/rice/KR_RICE_05_2.1.0-2.1.2_2012-10-25_B000.sql
@../../current/5.1.0/rice/KR_RICE_06_2.1.2-2.1.3_2012-10-23_B000.sql
@../../current/5.1.0/rice/KR_RICE_08_2.1.2-2.1.3_2012-11-15_B000.sql
@../../current/5.1.0/rice/KR_RICE_09_2.1.2-2.1.3_2012-11-28_B000.sql
@../../current/5.1.0/rice/KR_RICE_10_2.1.2-2.1.3_2012-12-12_B000.sql
@../../current/5.1.0/rice/KR_RICE_11_2.1.2-2.1.3_2013-01-09_B000.sql
@../../current/5.1.0/rice/KR_RICE_12_2.1.2-2.1.3_2013-01-16_B000.sql
@../../current/5.1.0/rice/KR_RICE_13_2.1.2-2.1.3_2013-01-14_B000.sql
@../../current/5.1.0/rice/KR_RICE_14_2.1.2-2.1.3_2013-02-19_B000.sql
commit;
exit
