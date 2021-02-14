--use taco_cloud_db;

delete from ingredient;
delete from `type`;

insert into `type`(name) values ('WRAP');
select @ID := LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Flour Tortilla', @ID);
insert into ingredient(name, type_id) values ('Corn Tortilla', @ID);

insert into `type`(name) values ('PROTEIN');
select @ID := LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Ground Beef', @ID);
insert into ingredient(name, type_id) values ('Carnitas', @ID);

insert into `type`(name) values ('VEGGIES');
select @ID := LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Lettuce', @ID);
insert into ingredient(name, type_id) values ('Diced Tomatos', @ID);

insert into `type`(name) values ('CHEESE');
select @ID := LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Cheddar', @ID);
insert into ingredient(name, type_id) values ('Monterey Jack', @ID);

insert into `type`(name) values ('SAUCE');
select @ID := LAST_INSERT_ID();
insert into ingredient(name, type_id) values ('Salsa', @ID);
insert into ingredient(name, type_id) values ('Sour Cream', @ID);
