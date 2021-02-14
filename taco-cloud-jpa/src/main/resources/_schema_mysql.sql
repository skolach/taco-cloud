use taco_cloud_db;

DROP TABLE if exists taco_ingredient;
DROP TABLE if exists order_taco;
DROP TABLE if exists `order`;
DROP TABLE if exists taco;
DROP TABLE if exists ingredient;
DROP TABLE if exists `type`;

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
  created_at timestamp not null
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
  delivery_name varchar(50) not null,
  delivery_street varchar(50) not null,
  delivery_city varchar(50) not null,
  delivery_state varchar(2) not null,
  delivery_zip varchar(10) not null,
  cc_number varchar(16) not null,
  cc_expiration varchar(5) not null,
  cc_cvv varchar(3) not null,
  created_at timestamp not null
);

create table if not exists order_taco (
  order_id bigint not null,
  taco_id bigint not null
);

alter table order_taco
  add foreign key (order_id) references `order`(id);

alter table order_taco
  add foreign key (taco_id) references taco(id);