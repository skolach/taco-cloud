create table if not exists Ingredient (
  id varchar(4) not null,
  name varchar(25) not null,
  type varchar(10) not null
);

create table if not exists Taco (
  id identity,
  name varchar(50) not null,
  createdAt timestamp not null
);

create table if not exists Taco_Ingredient (
  taco_id bigint not null,
  ingredient_id varchar(4) not null
);

alter table Taco_Ingredient
  add foreign key (taco_id) references Taco(id);

alter table Taco_Ingredient
  add foreign key (ingredient_id) references Ingredient(id);

create table if not exists Order (
  id identity,
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

create table if not exists Order_Taco (
  Order_id bigint not null,
  taco_id bigint not null
);

alter table Order_Taco
  add foreign key (Order_id) references Order(id);

alter table Order_Taco
  add foreign key (taco_id) references Taco(id);