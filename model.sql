drop table if exists book;

drop table if exists orders;

drop table if exists user;

/*==============================================================*/
/* Table: book                                                  */
/*==============================================================*/
create table book
(
   ID                   int not null,
   name                 text not null,
   writer               text not null,
   date                 date not null,
   price                double not null,
   class                text,
   quantity             int not null,
   valid                int not null,
   primary key (ID)
);

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders
(
   order_ID             int not null,
   userID               int not null,
   date                 date not null,
   state                int not null,
   primary key (order_ID)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   username             text not null,
   password             text not null,
   userID               int not null,
   level                int not null,
   email                text not null,
   valid                bool not null,
   primary key (userID)
);

alter table orders add constraint FK_Relationship_1 foreign key (userID)
      references user (userID) on delete restrict on update restrict;
