select *
from pg_tables
where schemaname = 'public';

create table barang
(
    kode         int          not null,
    name         varchar(100) not null,
    harga        int          not null default 1000,
    jumlah       int          not null default 0,
    waktu_dibuat TIMESTAMP    not null default current_timestamp
);

alter table barang
    add column deskripsi text;

alter table barang
    drop column deskripsi;

alter table barang
    rename column name to nama;

truncate barang;

drop table barang;

create table products
(
    id          varchar(10)  not null,
    name        varchar(100) not null,
    description text,
    price       int          not null,
    quantity    int          not null default 0,
    created_at  timestamp    not null default current_timestamp
);

insert into products(id, name, price, quantity)
values ('P0001', 'Mie Ayam Original', 15000, 100);

insert into products(id, name, description, price, quantity)
values ('P0002', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 20000, 100);

insert into products(id, name, price, quantity)
values ('P0003', 'Mie Ayam Ceker', 20000, 100),
       ('P0004', 'Mie Ayam Spesial', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 15000, 100);

select *
from products;

select id, name, price, quantity
from products;

alter table products
    add primary key (id);

select id, name, price, quantity
from products
where quantity = 0;

select id, name, price, quantity
from products
where price = 20000;

select id, name, price, quantity
from products
where id = 'P0004';

select *
from products;

create type PRODUCT_CATEGORY as enum ('Makanan', 'Minuman', 'Lain-Lain');

alter table products
    add column category PRODUCT_CATEGORY;

select *
from products;

update products
set category = 'Makanan'
where id = 'P0001';

update products
set category = 'Makanan'
where id = 'P0002';

update products
set category = 'Makanan'
where id = 'P0003';

update products
set category = 'Makanan'
where id = 'P0004';

update products
set category = 'Makanan'
where id = 'P0005';

update products
set category    = 'Makanan',
    description = 'Mie Ayam + Ceker'
where id = 'P0003';

SELECT *
from products;

update products
set price = price + 5000
where id = 'P0004';

insert into products(id, name, price, quantity, category)
values ('P0009', 'Contoh', 10000, 100, 'Minuman');

delete
from products
where id = 'P0009';

select id as "Kode Barang", price as "Harga Barang", description as "Deskripsi Barang"
from products;

select p.id          as "Kode Barang",
       p.price       as "Harga Barang",
       p.description as "Deskripsi Barang"
from products as p;

select *
from products
where price > 15000;

select *
from products
where price <= 15000;

select *
from products
where category != 'Minuman';

select *
from products
where price > 15000
  and category = 'Makanan';

SELECT *
FROM products;

insert into products(id, name, price, quantity, category)
values ('P0006', 'Es teh tawar', 10000, 100, 'Minuman'),
       ('P0007', 'Es Campur', 20000, 100, 'Minuman'),
       ('P0008', 'Just Jeruk', 15000, 100, 'Minuman');

select *
from products
where price > 15000
   or category = 'Makanan';

select *
from products
where quantity > 100
   OR category = 'Makanan' and price > 15000;

select *
from products
where category = 'Makanan'
   or (quantity > 100 and price > 15000);

select *
from products
where name ilike '%es%';

select *
from products
where description is null;

select *
from products
where description is not null;

select *
from products
where price between 10000 and 20000;

select *
from products
where price not between 10000 and 20000;

select *
from products
where category in ('Makanan', 'Minuman');

select *
from products
order by price asc, id desc;

select *
from products
where price > 0
order by price asc, id desc;

select *
from products
where price > 0
order by price asc, id desc
limit 2;

-- 1 limit 2 offset 0, 2 limit 2 offset 2, 3 limit 2 offset 4

select *
from products
where price > 0
order by price asc, id desc
limit 2 offset 2;

select category
from products;

select distinct category
from products;

select 10 + 10 as hasil;

select id, name, price / 1000 as price_in_k
from products;

select pi();

select power(10, 2);

select cos(10), sin(10), tan(10);

select id, name, power(quantity, 2) as quantity_power_2
from products;

create table admin
(
    id         serial       not null,
    first_name varchar(100) not null,
    last_name  varchar(100),
    primary key (id)
);

insert into admin(first_name, last_name)
values ('Eko', 'Khannedy'),
       ('Budi', 'Nugraha'),
       ('Joko', 'Morro');

select *
from admin;

select currval('admin_id_seq');

create sequence contoh_sequence;

select nextval('contoh_sequence');

select currval('contoh_sequence');

select id, name, description
from products;

select id, lower(name), length(name), lower(description)
from products;

select *
from products;

select id, extract(year from created_at), extract(month from created_at)
from products;

select id, category
from products;

select id,
       category,
       case category
           when 'Makanan' then 'Enak'
           when 'Minuman' then 'Seger'
           else 'Apa itu?'
           end as category_case
from products;

select id,
       price,
       case
           when price <= 15000 then 'Murah'
           when price <= 20000 then 'Mahal'
           else 'Mahal Banget'
           end as "apakah murah?"
from products;

select id,
       name,
       case
           when description is null then 'kosong'
           else description
           end as description
from products;

select count(id)
from products;

select avg(price)
from products;

select max(price)
from products;

select min(price)
from products;

select category, count(id) as "Total Product"
from products
group by category;

select category,
       avg(price) as "Rata Rata Harga",
       min(price) as "Harga termurah",
       max(price) as "Harga termahal"
from products
group by category;

select category, count(id) as "Total Product"
from products
group by category
having count(id) > 3;

select category,
       avg(price) as "Rata Rata Harga",
       min(price) as "Harga termurah",
       max(price) as "Harga termahal"
from products
group by category
having avg(price) >= 20000;

create table customer
(
    id         serial       not null,
    email      varchar(100) not null,
    first_name varchar(100) not null,
    last_name  varchar(100),
    primary key (id),
    constraint unique_email unique (email)
);

select *
from customer;

insert into customer(email, first_name, last_name)
values ('eko@pzn.com', 'Eko', 'Khannedy');

insert into customer(email, first_name, last_name)
values ('budi@pzn.com', 'Budi', 'Nugraha'),
       ('joko@pzn.com', 'Joko', 'Morro'),
       ('rully@pzn.com', 'Rully', 'Irwansyah');

alter table customer
    drop constraint unique_email;

alter table customer
    add constraint unique_email unique (email);

alter table products
    add constraint price_check check ( price > 1000 );

alter table products
    add constraint quantity_check check ( quantity >= 0 );

insert into products(id, name, price, quantity, category)
values ('XXX1', 'Contoh Gagal', 10, 0, 'Minuman');

insert into products(id, name, price, quantity, category)
values ('XXX1', 'Contoh Gagal', 10000, -10, 'Minuman');

select *
from products;

create table sellers
(
    id    serial       not null,
    name  varchar(100) not null,
    email varchar(100) not null,
    primary key (id),
    constraint email_unique unique (email)
);

insert into sellers(name, email)
values ('Galeri Olahraga', 'galeri@pzn.com'),
       ('Toko Tono', 'tono@pzn.com'),
       ('Toko Budi', 'budi@pzn.com'),
       ('Toko Rully', 'rully@pzn.com');

SELECT *
From sellers;

create index sellers_id_and_name_index ON sellers (id, name);
create index sellers_email_and_name_index ON sellers (email, name);
create index sellers_name_index ON sellers (name);

select *
from sellers
where id = 1;
select *
from sellers
where id = 1
   or name = 'Toko Tono';
select *
from sellers
where email = 'rully@pzn.com'
   or name = 'Toko Tono';
select *
from sellers
where name = 'Toko Tono';

select *
from products
where name ilike '%mie%';

select *
from products
where to_tsvector(name) @@ to_tsquery('mie');

select cfgname
from pg_ts_config;

create index products_name_search on products using gin (to_tsvector('indonesian', name));
create index products_description_search on products using gin (to_tsvector('indonesian', description));

select *
from products
where name @@ to_tsquery('ayam & tahu');
select *
from products
where description @@ to_tsquery('mie');

create table wishlist
(
    id          serial      not null,
    id_product  varchar(10) not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product foreign key (id_product) references products (id)
);

insert into wishlist(id_product, description)
values ('P0001', 'Mie ayam kesukaan'),
       ('P0002', 'Mie ayam kesukaan'),
       ('P0005', 'Mie ayam kesukaan');

SELECT *
FROM wishlist;

delete
from products
where id = 'P0005';

alter table wishlist
    drop constraint fk_wishlist_product;

alter table wishlist
    add constraint fk_wishlist_product foreign key (id_product) references products (id)
        on delete cascade on update cascade;

insert into products(id, name, price, quantity, category)
values ('XXX', 'Xxx', 10000, 100, 'Minuman');

SELECT *
FROM products;
insert into wishlist(id_product, description)
values ('XXX', 'Contoh');

select *
from wishlist;

delete
from products
where id = 'XXX';

select *
from wishlist
         join products on wishlist.id_product = products.id;

select p.id, p.name, w.description
from wishlist as w
         join products as p on w.id_product = p.id;

alter table wishlist
    add column id_customer int;

alter table wishlist
    add constraint fk_wishlist_customer foreign key (id_customer) references customer (id);

update wishlist
set id_customer = 1
where id in (2, 3);

update wishlist
set id_customer = 4
where id = 4;

select *
From customer;

select *
from wishlist;

select c.email, p.id, p.name, w.description
from wishlist as w
         join products as p on w.id_product = p.id
         join customer as c on c.id = w.id_customer;

create table wallet
(
    id          serial not null,
    id_customer int    not null,
    balance     int    not null default 0,
    primary key (id),
    constraint wallet_customer_unique unique (id_customer),
    constraint fk_wallet_customer foreign key (id_customer) references customer (id)
);

select *
from customer;

insert into wallet(id_customer, balance)
values (1, 1000000),
       (4, 2000000),
       (5, 3000000),
       (6, 4000000);

select *
from wallet;

select *
from customer
         join wallet on wallet.id_customer = customer.id;

create table categories
(
    id   varchar(10)  not null,
    name varchar(100) not null,
    primary key (id)
);

insert into categories(id, name)
values ('C0001', 'Makanan'),
       ('C0002', 'Minuman');

select *
from categories;

alter table products
    add column id_category varchar(10);

alter table products
    add constraint fk_product_category foreign key (id_category) references categories (id);

select *
from products;

update products
set id_category = 'C0001'
where category = 'Makanan';

update products
set id_category = 'C0002'
where category = 'Minuman';

alter table products
    drop column category;

select *
from products
         join categories on products.id_category = categories.id;

create table orders
(
    id         serial    not null,
    total      int       not null,
    order_date timestamp not null default current_timestamp,
    primary key (id)
);

create table orders_detail
(
    id_product varchar(10) not null,
    id_order   int         not null,
    price      int         not null,
    quantity   int         not null,
    primary key (id_product, id_order)
);

alter table orders_detail
    add constraint fk_orders_detail_product foreign key (id_product) references products (id);

alter table orders_detail
    add constraint fk_orders_detail_order foreign key (id_order) references orders (id);

insert into orders(total)
values (1),
       (1),
       (1);

select *
from orders;

select *
from products
order by id;

insert into orders_detail (id_product, id_order, price, quantity)
values ('P0001', 1, 1000, 2),
       ('P0002', 1, 1000, 2),
       ('P0003', 1, 1000, 2);

insert into orders_detail (id_product, id_order, price, quantity)
values ('P0004', 2, 1000, 2),
       ('P0006', 2, 1000, 2),
       ('P0007', 2, 1000, 2);

insert into orders_detail (id_product, id_order, price, quantity)
values ('P0001', 3, 1000, 2),
       ('P0004', 3, 1000, 2),
       ('P0005', 3, 1000, 2);

select *
from orders_detail;

select *
from orders
         join orders_detail on orders_detail.id_order = orders.id
         join products on orders_detail.id_product = products.id;


select *
from orders
         join orders_detail on orders_detail.id_order = orders.id
         join products on orders_detail.id_product = products.id
where orders.id = 3;

insert into categories (id, name)
VALUES ('C0003', 'Gadget'),
       ('C0004', 'Laptop'),
       ('C0005', 'Pulsa');

select *
from categories;

select *
from products;

insert into products(id, name, price, quantity)
values ('X0001', 'Contoh 1', 10000, 100),
       ('X0002', 'Contoh 2', 10000, 100);

select *
from categories
         inner join products on products.id_category = categories.id;

select *
from categories
         left join products on products.id_category = categories.id;

select *
from categories
         right join products on products.id_category = categories.id;

select *
from categories
         full join products on products.id_category = categories.id;

select avg(price)
from products;

select *
from products
where price > (select avg(price) from products);

select *
from products;

select max(price)
from (select products.price as price
      from categories
               join products on products.id_category = categories.id) as contoh;

create table guestbooks
(
    id      serial       not null,
    email   varchar(100) not null,
    title   varchar(100) not null,
    content text,
    primary key (id)
);

select *
from customer;

insert into guestbooks(email, title, content)
values ('eko@pzn.com', 'feedback eko', 'ini feedback eko'),
       ('eko@pzn.com', 'feedback eko', 'ini feedback eko'),
       ('budi@pzn.com', 'feedback budi', 'ini feedback budi'),
       ('rully@pzn.com', 'feedback rully', 'ini feedback rully'),
       ('tono@pzn.com', 'feedback tono', 'ini feedback tono'),
       ('tono@pzn.com', 'feedback tono', 'ini feedback tono');

select *
from guestbooks;

select distinct email
from customer
union
select distinct email
from guestbooks;

select email
from customer
union all
select email
from guestbooks;

select email, count(email)
from (select email
      from customer
      union all
      select email
      from guestbooks) as contoh
group by email;

select email
from customer
intersect
select email
from guestbooks;

select email
from customer
except
select email
from guestbooks;

start transaction;

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 2');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 3');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 4');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'transaction 5');

select *
from guestbooks;

commit;

start transaction;

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 2');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 3');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 4');

insert into guestbooks(email, title, content)
values ('transaction@pzn.com', 'transaction', 'rollback 5');

select *
from guestbooks;

rollback;

select *
from products;

start transaction;

update products
set description = 'Mie ayam original enak'
where id = 'P0001';

select *
from products
where id = 'P0001';

commit;

start transaction;

select *
from products
where id = 'P0001' for update;

rollback;

select *
from products
where id = 'P0001';

start transaction;

select *
from products
where id = 'P0001' for update;

select *
from products
where id = 'P0002' for update;

rollback;

select current_schema();

create schema contoh;

drop schema contoh;

SET search_path TO contoh;

select current_schema();

select *
from public.products;

create table contoh.products
(
    id   serial       not null,
    name varchar(100) not null,
    primary key (id)
);

select * from contoh.products;

SET search_path TO public;

insert into contoh.products(name)
values ('iphone'),
       ('Play Station');

select * from contoh.products;

create role eko;
create role budi;

drop role eko;
drop role budi;

alter role eko login password 'rahasia';

alter role budi login password 'rahasia';

grant insert, update, select on all tables in schema public to eko;
grant usage, select, update ON guestbooks_id_seq TO eko;
grant insert, update, select on customer to budi;

create database belajar_restore;




-- Query create table with primary key --
create table cars
(
    id serial not null,
    brand varchar(100) not null,
    model varchar(100) not null,
    year int not null,
    primary key (id)
);


create type CAR_TYPE as enum ('Sedan', 'SUV', 'MPV', 'Hatchback');

alter table cars add column category CAR_TYPE;

// query update category
update cars set category = 'Sedan' where id = 1;

update cars
  set category = 'Sedan', 
  year = 2020
  where id = 3;


// query update all
update cars set category = 'SUV';

// query show enum type values
select enum_range(null::CAR_TYPE);

alter table cars add column price int default null;

// query update column price
update cars set price = 100000000 where id = 1;

// query update column price
update cars set price = price + 400 where id = 3;

-- Query insert --
insert into cars (brand, model, year, category, price) values ('Toyota', 'Toyota Avanza', 2019, 'MPV', 200000000);
update cars set price = price - 10000000 where id = 5;

-- Query alias column --
select brand as merk, model as model_mobil, year as tahun, * from cars;

-- Create table user --
create table users
(
    id serial not null,
    name varchar(100) not null,
    address text,
    primary key (id)
);

-- Insert data user --
insert into users(name, address) values ('Fery', 'Jakarta');

-- Query Insert data user multiple --
insert into users(name, address) values ('Budi', 'Jakarta'), ('Joko', 'Bandung');

-- Query create table transaksi: mencatat id user dan id cars sebagai foreign keys --
create table transaksi (
    id serial not null,
    id_user int not null,
    id_car int not null,
    primary key (id),
    constraint fk_user foreign key (id_user) references users(id),
    constraint fk_car foreign key (id_car) references cars(id)
);

alter table transaksi add column created_at timestamp not null default current_timestamp;

-- Query insert data transaksi --
insert into transaksi(id_user, id_car) values (1, 3), (2, 4);

-- Query join table transaksi, users, cars --
select t.id, u.name as user_name, c.brand, c.model, t.created_at
    from transaksi t, users u, cars c
    where t.id_user = u.id and t.id_car = c.id;

-- Query join table transaksi, users, cars with join --
select t.id, u.name as user_name, c.brand, c.model, t.created_at
    from transaksi t
    join users u on t.id_user = u.id
    join cars c on t.id_car = c.id;

-- Join withou alias --
select * from transaksi
    join users on transaksi.id_user = users.id
    join cars on transaksi.id_car = cars.id;

-- Query delete user --
delete from users where id = 2;

-- query delete user with reference in transaksi table --
delete from users where id = 1;

-- Query add enum to car type when car type already exist --
alter type CAR_TYPE add value 'Sport';

-- Query select cars with price condition --
select * from cars where price <= 10000;
select * from cars where price > 10000;

-- Query AND --
select * from cars where price > 9000 and year = 2020;

-- Query OR --
select * from cars where price > 9000 or year = 2020;

-- Query combine AND OR --
select * from cars where price > 9000 and (year = 2020 or year = 2019);

-- Query IN --
select * from cars where year in (2019, 2020);

-- Query NOT IN --
select * from cars where year not in (2019, 2020);

-- Query BETWEEN --
select * from cars where year between 2019 and 2020;

-- Query NOT BETWEEN --
select * from cars where year not between 2020 and 2025;
select * from cars where year not between 2020 and 2025 and category = 'MPV';

-- Query LIKE --
select * from cars where model like '%Toyota%';

-- Query ILIKE --
select * from cars where model ilike '%toyota%';

-- Query IS NULL --
select * from cars where price IS NULL;

-- Query IS NOT NULL --
select * from cars where price IS NOT NULL;

-- Query ORDER BY ASC --
select * from cars order by price asc;

-- Query ORDER BY DESC --
select * from cars order by price desc;

-- Query ORDER BY multiple column --
select * from cars order by price asc, year desc;

-- Query LIMIT --
select * from cars limit 2;

-- Query LIMIT OFFSET --
select * from cars limit 2 offset 0; // 1, 2
select * from cars limit 2 offset 2; // 3, 4
select * from cars limit 2 offset 4; // 5

-- Query LIMIT OFFSET with ORDER BY --
select * from cars order by price asc limit 2 offset 2;

-- Query LIMIT OFFSET with ORDER BY DESC --
select * from cars order by price desc limit 2 offset 2;

-- Query LIMIT OFFSET with ORDER BY multiple column --
select * from cars order by price asc, year desc limit 2 offset 2;

-- Query LIMIT OFFSET with ORDER BY multiple column DESC --
select * from cars order by price asc, year desc limit 2 offset 2;

-- Query Distinct --
select distinct year from cars;
select distinct category from cars;

-- Query Distinct with multiple column --
select distinct year, category from cars;

-- Query arithmetic operation --
select 10 + 10 as hasil;

-- Query count --
select count(id) from cars;
select count(id) from cars where brand = 'BMW';

-- Query arithmetic operation with column --
select price / 1000 as price_in_k from cars;
select brand, model, price / 1000 as price_in_k from cars;
select price / 1000 as price_in_k, * from cars;

-- Query function pi() --
select pi();

-- Query function power() --
select power(10, 2);

-- Query function cos, sin, tan --
select cos(10), sin(10), tan(10);

-- Query function power with column --
select brand, model, power(price, 2) as price_power_2 from cars;

-- Query get latest id --
select currval('cars_id_seq') from cars;

-- Query get next id --
select nextval('cars_id_seq');

-- Query get current id --
select currval('cars_id_seq');



-- Query Create enum admin type --
CREATE TYPE ADMIN_TYPE AS ENUM ('Super Admin', 'Admin', 'User');
SELECT enum_range(NULL::ADMIN_TYPE);

-- Query create table admin with primary key --
create table admin
(
    id serial not null,
    first_name varchar(100) not null,
    last_name varchar(100),
    admin_type ADMIN_TYPE,
    salary int not null default 0,
    primary key (id)
);

-- Query insert multipe data admin --
insert into admin(first_name, last_name, admin_type, salary) 
    values 
        ('Eko', 'Khannedy', 'Super Admin', 10000000),
        ('Fery', 'Kurniawan', 'Admin', 55000000),
        ('Budi', 'Nugraha', 'Admin', 5000000),
        ('Joko', 'Morro', 'User', 2000000);

alter table admin add column created_at timestamp not null default current_timestamp;

-- Query COunt total admin --
select COUNT(id) as "Total" from admin where admin_type = 'Admin';

-- Query AVG salary admin --
select AVG(salary) as "Rata Rata Gaji" from admin where admin_type = 'Admin';


-- Query String functions --

-- Query lower() --
select lower('EKO');
select lower(first_name) from admin;

-- Query upper() --
select upper('eko');
select upper(first_name) from admin;

-- Query length() --
select length('EKO');
select length(first_name) from admin;

-- Query concat() --
select concat('EKO', ' ', 'KHANNEDY');
select concat(first_name, ' ', last_name) from admin;
select concat(first_name, ' ', last_name) as "Full Name" from admin;

-- Query substring() --
select substring('EKO KHANNEDY' from 1 for 2);
select substring('EKO KHANNEDY' from 5 for 8);
select substring('EKO KHANNEDY' from 5);
select substring(first_name from 1 for 3) from admin;

-- Query subsring() with concat() --
select concat(substring(first_name from 1 for 1), substring(last_name from 1 for 1)) from admin;


-- Query trim() --
select trim(' EKO ');
select trim(' EKO ') as "Trimmed";

-- Query ltrim() --
select ltrim(' EKO ');
select ltrim(' EKO ') as "Left Trimmed";

-- Query rtrim() --
select rtrim(' EKO ');
select rtrim(' EKO ') as "Right Trimmed";

-- Query replace() --
select replace('EKO KHANNEDY', 'EKO', 'FERY');
select replace('EKO KHANNEDY', 'EKO', 'FERY') as "Replaced";
select *, replace(first_name, 'E', 'F') as "Replaced" from admin;

-- Query position() --
select position('E' in 'EKO');
select *, position('E' in first_name) as "Position" from admin;

-- Query split_part() --
select split_part('EKO KHANNEDY', ' ', 1);
select split_part('EKO KHANNEDY', ' ', 2);
select split_part('EKO KHANNEDY', ' ', 3);



insert into admin(first_name, last_name, admin_type, salary) 
    values 
        ('Zeline', 'Naura', 'Super Admin', 900000000),
        ('Mira', 'Momih', 'Admin', 55000000);

-- Date and time functions --

-- Query extract() --
select extract(year from created_at) from admin;
select extract(month from created_at) from admin;
select extract(day from created_at) from admin;
select extract(hour from created_at) from admin;
select extract(minute from created_at) from admin;
select extract(second from created_at) from admin;

select extract(year from created_at) as "Year", extract(month from created_at) as "Month", extract(day from created_at) as "Day" from admin;

-- Query date_part() --
select date_part('year', created_at) from admin;
select date_part('month', created_at) from admin;
select date_part('day', created_at) from admin;
select date_part('hour', created_at) from admin;
select date_part('minute', created_at) from admin;
select date_part('second', created_at) from admin;

-- Query age() --
select age(created_at) from admin;
select age(created_at, '2021-01-01') from admin;

-- Query now() --
select now();
select *, now() from admin;

-- Query current_date --
select current_date;

-- Query current_time --
select current_time;

-- Query current_timestamp --
select current_timestamp;

-- Query date() --
select date('2021-01-01');

-- Query time() --
select time('12:00:00');


-- Flow Control -- 

-- Query case when --
select 
    first_name,
    last_name,
    case 
        when admin_type = 'Super Admin' then 'Super Administrator'
        when admin_type = 'Admin' then 'Administrator'
        else 'User Biasa'
    end as "Role"
from admin;

-- Query case when with number condition --
select 
    *,
    case 
        when salary >= 10000000 then 'Gaji Tinggi'
        when salary >= 5000000 then 'Gaji Sedang'
        else 'Gaji Rendah'
    end as "Gaji"
from admin;

-- Query Number functions --

-- Query round() --
select round(10.12345);
select round(10.12345, 2);
select round(10.12345, 3);
select *, round(salary, -6) as "Gaji" from admin;

-- Query ceil() --
select ceil(10.12345);
select ceil(10.12345);

-- Query floor() --
select floor(10.12345);
select floor(10.12345);

-- Query trunc() --
select trunc(10.12345);
select trunc(10.12345, 2);
select trunc(10.12345, 3);

-- Query random() --
select random();
select random() * 100;
select *, random() * 1000000 as "Random Salary" from admin;

-- Query abs() --
select abs(-10);
select abs(-10.12345);

-- Query sign() --
select sign(-10);
select sign(-10.12345);
select sign(10.12345);

-- Query sqrt() --
select sqrt(100);

-- Query cbrt() --
select cbrt(1000);

-- Query exp() --
select exp(1);

-- Query ln() --
select ln(10);

-- Query log() --
select log(10);

-- Query power() --
-- apa itu power? --
-- power(10, 2) = 10^2 = 100 --
select power(10, 2);

-- Query factorial() --
-- apa itu factorial? --
-- factorial(5) = 5! = 5 x 4 x 3 x 2 x 1 = 120 --
select factorial(5);

-- Query trigonometric functions --
-- apa itu trigonometric functions? --
-- sin(90) = 1 --
-- cos(0) = 1 --
-- tan(45) = 1 --
select sin(90), cos(0), tan(45);

select count(id) from admin


-- Query group by --
select admin_type, count(id) from admin group by admin_type;

-- Query group by with multiple column --
select
    admin_type,
    count(id) as "Total",
    floor(avg(salary)) as "Rata Rata Gaji",
    min(salary) as "Gaji Terendah",
    max(salary) as "Gaji Tertinggi"
from admin
group by admin_type;


-- Having clause --
-- Query having --
select 
    admin_type,
    count(id) as "Total",
    floor(avg(salary)) as "Rata Rata Gaji",
    min(salary) as "Gaji Terendah",
    max(salary) as "Gaji Tertinggi"
from admin
group by admin_type
having count(id) > 2;

-- Query having with condition --
select 
    admin_type,
    count(id) as "Total",
    floor(avg(salary)) as "Rata Rata Gaji",
    min(salary) as "Gaji Terendah",
    max(salary) as "Gaji Tertinggi"
from admin
group by admin_type
having avg(salary) >= 50000000;


-- Constraint --
-- Query create table with check constraint --
create table products
(
    id serial not null,
    name varchar(100) not null,
    price int not null,
    quantity int not null default 0,
    created_at timestamp not null default current_timestamp,
    primary key (id),
    constraint price_check check (price > 1000),
    constraint quantity_check check (quantity >= 0)
);

-- Query insert data products --
insert into products(name, price, quantity) values ('Mie Ayam', 10000, 100);

-- Query insert data products with check constraint --
-- failed because price < 1000 --
insert into products(name, price, quantity) values ('Mie Ayam', 10, 100);

-- Query insert data products with check constraint --
-- failed because quantity < 0 --
insert into products(name, price, quantity) values ('Mie Ayam', 10000, -10);

-- Query alter table products add check constraint --
alter table products add constraint price_check check (price > 1000);

-- add constraint unique email to table admin --
alter table admin add constraint unique_email unique (email);





--------------------------- RUKITA ---------------------------


sudo -i -u postgres
psql

-- psql show all databases --
\l

-- show all tables --
\dt

-- create database rukita --
create database rukita;


-- Username: postgres
-- Password: FdVmu58scm2G8P3z
-- Server: 10.20.4.158
-- DB: backend_staging

-- psql connect to rukita database backend_staging --

psql -h 10.20.4.158 -U postgres -d backend_staging