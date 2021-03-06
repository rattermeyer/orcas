create table TAB_ADD_VIEW (  COL_ADD_IX_1 NUMBER(15) not null, COL_ADD_IX_2 NUMBER(15) not null, COL_ADD_IX_3 NUMBER(15) not null   )  ;
create materialized view log on TAB_ADD_VIEW with rowid , sequence ( COL_ADD_IX_1,COL_ADD_IX_2 ) including new values;
drop materialized view log on TAB_MOD_VIEW;
create materialized view log on TAB_MOD_VIEW with primary key , sequence ( COL_ADD_IX_2,COL_ADD_IX_3 ) , commit scn;
drop materialized view log on TAB_MOD_SCN;
create materialized view log on TAB_MOD_SCN with primary key , sequence ( COL_ADD_IX_2,COL_ADD_IX_3 ) , commit scn;
alter materialized view log on TAB_MOD_NEWVALS including new values;
drop materialized view log on TAB_MOD_PK;
create materialized view log on TAB_MOD_PK with primary key;
create materialized view log on TAB_MOD_ROWID with rowid;
create materialized view log on TAB_MOD_SEQ with primary key , sequence;
drop materialized view log on TAB_MOD_PARALLEL_4;
create materialized view log on TAB_MOD_PARALLEL_4 parallel 4 with primary key;
drop materialized view log on TAB_MOD_NOPARALLEL;
create materialized view log on TAB_MOD_NOPARALLEL with primary key;
drop materialized view log on TAB_MOD_TABLESPACE;
create materialized view log on TAB_MOD_TABLESPACE tablespace SYSTEM with primary key;
drop materialized view log on TAB_MOD_TABLESPACE_REVERSE;
create materialized view log on TAB_MOD_TABLESPACE_REVERSE tablespace USERS with primary key;
