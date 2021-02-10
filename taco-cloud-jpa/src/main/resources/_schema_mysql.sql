use taco_cloud_db;

DROP TABLE if exists ORDER_TACO;
DROP TABLE if exists `ORDER`;
DROP TABLE if exists TACO_INGREDIENT;
DROP TABLE if exists TACO;
DROP TABLE if exists INGREDIENT;


DROP TABLE if exists taco_ingredient;
DROP TABLE if exists taco_order_tacos;
DROP TABLE if exists taco_order;
DROP TABLE if exists ingredient;
DROP TABLE if exists order_tacos;
DROP TABLE if exists taco;
DROP TABLE if exists `type`;
DROP TABLE if exists `TYPE`;

DROP TABLE if exists Taco_Ingredient;
DROP TABLE if exists Ingredient;
DROP TABLE if exists Order_Taco;
DROP TABLE if exists Taco;
DROP TABLE if exists `Order`;
DROP TABLE if exists `Type`;
DROP TABLE if exists `TYPE`;


create table if not exists `type` (
  id bigint not null auto_increment key,
  `name` varchar(10) not null
);

create table if not exists ingredient (
  id bigint not null auto_increment key,
  `name` varchar(25) not null,
  type_id bigint not null
);

alter table ingredient
  add foreign key (type_id) references `type`(id);

create table if not exists taco (
  id bigint not null auto_increment key,
  `name` varchar(50) not null,
  createdAt timestamp not null
);

create table if not exists taco_ingredient (
  taco_id bigint not null,
  ingredient_id bigint not null
);

alter table taco_ingredient
  add foreign key (taco_id) references taco(id);

alter table taco_ingredient
  add foreign key (ingredient_id) references ingredient(id);

create table if not exists `order` (
  id bigint not null auto_increment key,
  deliveryName varchar(50) not null,
  deliveryStreet varchar(50) not null,
  deliveryCity varchar(50) not null,
  deliveryState varchar(2) not null,
  deliveryZip varchar(10) not null,
  ccNumber varchar(16) not null,
  ccExpiration varchar(5) not null,
  ccCVV varchar(3) not null,
  createdAt timestamp not null
);

create table if not exists order_taco (
  order_id bigint not null,
  taco_id bigint not null
);

alter table order_taco
  add foreign key (order_id) references `order`(id);

alter table order_taco
  add foreign key (taco_id) references taco(id);