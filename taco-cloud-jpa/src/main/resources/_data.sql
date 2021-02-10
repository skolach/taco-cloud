use taco_cloud_db;

delete from ingredient;
delete from `type`;

insert into `type`(name) values ('WRAP');
select @ID = LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Flour Tortilla', @IDD)
insert into ingredient(name, type_id) values ('Corn Tortilla', @IDD)

insert into `type`(name) values ('PROTEIN');
select @ID = LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Ground Beef', @IDD)
insert into ingredient(name, type_id) values ('Carnitas', @IDD)

insert into `type`(name) values ('VWGGIES');
select @ID = LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Lettuce', @IDD)
insert into ingredient(name, type_id) values ('Diced Tomatos', @IDD)

insert into `type`(name) values ('CHEESE');
select @ID = LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Cheddar', @IDD)
insert into ingredient(name, type_id) values ('Monterey Jack', @IDD)

insert into `type`(name) values ('SAUCE');
select @ID = LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Salsa', @IDD)
insert into ingredient(name, type_id) values ('Sour Cream', @IDD)
