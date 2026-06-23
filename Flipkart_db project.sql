create table product (
Product_id serial primary key,
name varchar(99) not null,
sku_code char(8) unique not null,
price numeric(10,2) default 0 check (price >=0) ,
Stock_quantity int default 0 check (Stock_quantity >= 0),
is_available boolean default TRUE,
category text not null,
added_on date default current_date,
last_update timestamp default now()
);

insert into product(name,sku_code,price,stock_quantity,is_available,category)
values 
('Key board''WM123456',699.99,50,TRUE,'Electronics'),
('Gaming Mouse''ZP543213',799.99,3,TRUE,'Electronics'),
('Notebook''JH00pwrr',55,19,TRUE,'Stationary'),
('Pen set''HH908807',139.01,44,TRUE,'stationary'),
('Yoga Mat''YM003125',588.00,150,TRUE,'Fitne'),
('Gaming Mouse''QR00P342',799.99,3,TRUE,'Electronics'),
('Notebook''LW975826',55,19,TRUE,'Stationary'),
('Pen set''GGR92635',139.01,44,TRUE,'stationary'),