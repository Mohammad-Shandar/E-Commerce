select * from customer

select * from seller

create table Seller
(
seller_id int primary key identity(100,1),
seller_name varchar(40) not null,
pass_word varchar(40) not null,
mob_no varchar(15) unique not null ,
email_id  varchar(40) unique not null,
acc_no bigint unique not null,
ifsc_code varchar(40) not null,
gst_in varchar(30) unique not null,
)

insert into Seller values('Ashok','as12',123456789,'as@gmail.com',9874563210,'ASGR2103','ASGR145200');

insert into Seller values('Akash','aka12',123456780,'ak@gmail.com',9154663210,'ASHR2203','ASHR145200');


create table Category
(
category_id int primary key identity(200,1),
category_name varchar(40) not null
)


insert into Category values('Electronics');
insert into Category values('Men');
insert into Category values('Women');
insert into Category values('Home and Furniture');
insert into Category values('Sports');
insert into Category values('Others');


--select * from Sub_Category

create table Sub_Category
(
sub_category_id int primary key identity(100,1),
category_id int references category(category_id) on delete cascade,
sub_category_name varchar(40) not null
)

insert into Sub_Category values(200,'Mobiles');
insert into Sub_Category values(200,'Laptops');
insert into Sub_Category values(200,'Camera');
insert into Sub_Category values(200,'Tablet');





create table Product
(
product_Id int primary key identity(100,1),
seller_id int references Seller(seller_id) on delete cascade,
Sub_category_id int references Sub_Category(sub_category_id) on delete cascade,
product_name varchar(40) not null,
product_Desc varchar(300) ,
product_price float not null,
Product_quantity int not null,
img_front varchar(max) not null,			--edited as not null
img_back varchar(MAX),
img_left varchar(MAX),
img_right varchar(MAX),
img_top varchar(MAX)
)

--drop table product

--select * from product

insert into Product values(102,100,'Samsung S9','This model
weighs 5.6 ounces, has a 5.8 inch touch screen display, 12-megapixel main
camera, and 8-megapixel selfie camera. It comes with 4GB of RAM.',25000,
50,'C:\Workarea\Asp.Net\FlipProject\s9.jpg','','','','');

insert into Product values(100,100,'OnePlus 7T','The new OnePlus phone is powered
by an octa core Qualcomm Snapdragon 855 Plus SoC. Coupled with 8 GB of storage, the 
phone can handle most tasks with ease.',15000,
20,'C:\Workarea\Asp.Net\FlipProject\O7t.jpg','','','','');

insert into Product values(100,100,'Iphone X','The iPhone X was Apples flagship 
10th anniversary iPhone featuring a 5.8-inch OLED display, facial recognition and 3D 
camera functionality, a glass body, and an A11 Bionic processor.',50000,
20,'C:\Workarea\Asp.Net\FlipProject\ix.jpg','','','','');

insert into Product values(102,100,'Realme 5i','The new OnePlus phone is powered
by an octa core Qualcomm Snapdragon 855 Plus SoC. Coupled with 8 GB of storage, the 
phone can handle most tasks with ease.',10000,
20,'C:\Workarea\Asp.Net\FlipProject\R5.jpg','','','','');
