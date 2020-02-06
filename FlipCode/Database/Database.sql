create table Category
(
category_id int primary key identity(100,1),
category_name varchar(40) not null
)

create table Sub_Category
(
category_id int references category(category_id) on delete cascade,
sub_category_id int primary key identity(100,1),
sub_category_name varchar(40) not null
)

create table Seller
(
seller_id int primary key identity(100,1),
seller_name varchar(40) not null,
password varchar(40) not null,
Phone_No varchar(15) unique not null ,
Email_Id  varchar(40) unique not null,
Account_No bigint unique not null,
IFSC_Code varchar(40) not null,
GSTIN varchar(30) unique not null,
)

create table Product
(
product_Id int primary key identity(100,1),
seller_id int references Seller(seller_id) on delete cascade,
Sub_category_id int references Sub_Category(sub_category_id) on delete cascade,
product_name varchar(40) not null,
product_Desc varchar(300) ,
product_price float not null,
Product_quantity int not null,
img_front VARBINARY(MAX) not null,			--edited as not null
img_back VARBINARY(MAX),
img_left VARBINARY(MAX),
img_right VARBINARY(MAX),
img_top VARBINARY(MAX)
)

create table admin
(
Admin_Id int primary key identity(100,1),
Password varchar(20) not null
)


create table customer
(
cust_id int primary key identity(100,1),
First_name varchar(20) not null,
Last_Name varchar(20),
phone_no varchar(15) unique not null ,
password varchar(30) not null,
Email_Id  varchar(40) unique not null,
Address varchar(300) not null,
Zipcode varchar(6) not null)														

create table cart
(
cart_id int primary key identity(100,1),
No_of_products int
)

create table cart_details
(
cart_id int references cart(cart_id) on delete cascade,
prod_id int references product(product_id) on delete cascade,
quantity int not null,
prod_total_amnt int not null)



create table orders
(
order_id int primary key identity(100,1),
cust_id int references customer(cust_id) on delete cascade,
Order_Amt int not null,
Order_date date
)

create table order_details
(
order_id int references orders(order_id) on delete cascade,
product_id int references Product(product_ID) on delete cascade,
quantity int not null
)


create table shipper
(
shipper_id int primary key identity(100,1),
shipping_company_name varchar(20) not null,
)

create table shipping
(
shipping_id int primary key identity(100,1),
shipper_id int references shipper(shipper_id) on delete cascade,
ship_date date not null
)


create table shipping_details
(
shipping_id int references shipping(shipping_id) on delete cascade,
cust_id int references customer(cust_id) on delete cascade,
product_id int references Product(product_ID) on delete cascade
)
