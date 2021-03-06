alter table TAB_INDEX add "col add ix 3" NUMERIC(15) not null;
create index ADD_2COL_IX on TAB_INDEX ( COL_ADD_IX_1,COL_ADD_IX_2 );
create index ADD_1COL_IX on TAB_INDEX ( COL_ADD_IX_2 );
create index ADD_1COL_IX_STRING on TAB_INDEX ( "col add ix 3" );
create index MOD_ORDER_IX on TAB_INDEX ( COL_MOD_IX_2,COL_MOD_IX_1 );
create index MOD_PARALLEL_IX on TAB_INDEX ( COL_MOD_IX_3 ) parallel;
create index MOD_PARALLEL_4_IX on TAB_INDEX ( COL_MOD_IX_4 ) parallel  4;
create index MOD_NOPARALLEL_IX on TAB_INDEX ( COL_MOD_IX_5 );
create unique index MOD_UNIQUE_IX on TAB_INDEX ( COL_MOD_IX_6 );
create index MOD_NOUNIQUE_IX on TAB_INDEX ( COL_MOD_IX_7 );
create index MOD_LOGGING_IX on TAB_INDEX ( COL_MOD_IX_10 );
create index MOD_LOGGING_REVERSE_IX on TAB_INDEX ( COL_MOD_IX_11 ) nologging;
create index MOD_RENAME on TAB_INDEX ( COL_MOD_IX_12 );
