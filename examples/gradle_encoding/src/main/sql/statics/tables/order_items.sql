create table ORDER_ITEMS
(
  ORIT_ID number(15) not null,
  VERSION number(15) default "0" not null,
  ORDR_ID number(15) not null,
  ITEM_ID number(15) not null,
  PRICE number(8,2) not null,
  QUANTITY number(4) not null,

  constraint ORIT_PK primary key (ORIT_ID),

  index ORIT_ITEM_FK_GEN_IX (ITEM_ID),
  constraint ORIT_UC unique (ORDR_ID,ITEM_ID),

  constraint ORIT_ITEM_FK foreign key (ITEM_ID) references ITEMS (ITEM_ID),
  constraint ORIT_ORDR_FK foreign key (ORDR_ID) references ORDERS (ORDR_ID) on delete cascade
);

