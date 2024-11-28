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

-- Masuk sebagai root
sudo -i -u postgres


-- Create username password untuk database;
CREATE USER admin WITH PASSWORD 'password';

-- Grant all privileges to user admin;
GRANT ALL PRIVILEGES ON DATABASE belajar TO admin;

-- Login as user admin;
psql -U admin -d belajar



ALTER TABLE buildings_pointofinterest ADD COLUMN search_important2 boolean not null default false;
ALTER TABLE buildings_pointofinterest ADD COLUMN search_popularity2 double precision not null default 1;


{"district_id":3173010,"date_updated":"2024-06-06T06:19:21.668746Z","subdistrict_id":3173010003,"category_id":18,"date_deleted":null,"name_en":"Sudirman","postal_code":null,"deleted_by":null,"id":2810,"created_by":"kumala","booster":false,"name":"Sudirman","slug":"sudirman","tag":null,"address":"Karet Tengsin Kecamatan Tanah Abang Kota Jakarta Pusat Daerah Khusus Ibukota Jakarta","lon":106.81683243411933,"province_id":31,"lat":-6.206509508936848,"is_deleted":false,"updated_by":null,"city_id":3173,"date_created":"2024-06-06T06:19:21.668722Z","country_id":84}

// Create query insert from data above

INSERT INTO buildings_pointofinterest
  (district_id, date_updated, subdistrict_id, category_id, date_deleted, name_en, postal_code, deleted_by, id, created_by, booster, name, slug, tag, address, lon, province_id, lat, is_deleted, updated_by, city_id, date_created, country_id)
  VALUES
  (3173010, '2024-06-06T06:19:21.668746Z', 3173010003, 18, null, 'Sudirman', null, null, 2810, 'kumala', false, 'Sudirman', 'sudirman', null, 'Karet Tengsin Kecamatan Tanah Abang Kota Jakarta Pusat Daerah Khusus Ibukota Jakarta', 106.81683243411933, 31, -6.206509508936848, false, null, 3173, '2024-06-06T06:19:21.668722Z', 84);


SELECT * FROM buildings_pointofinterest where id IN (640, 708, 432, 2938);

[
{"district_id":3273250,"date_updated":"2023-12-20T08:55:03.316211Z","subdistrict_id":3273250004,"category_id":2,"date_deleted":null,"name_en":"Universitas Pendidikan Indonesia","postal_code":null,"deleted_by":null,"id":432,"created_by":"kumala@rukita.co","booster":false,"name":"Universitas Pendidikan Indonesia","slug":"universitas-pendidikan-indonesia","tag":"UPI,upi bandung,upi lembang","address":"Jl. Dr. Setiabudi No.229, Isola, Kec. Sukasari, Kota Bandung, Jawa Barat 40154, Indonesia","lon":107.5936498601473,"province_id":32,"lat":-6.86241422260081,"is_deleted":false,"updated_by":"kumala","city_id":3273,"date_created":"2022-01-14T09:17:12.146405Z","country_id":84},
{"district_id":3374070,"date_updated":"2024-06-21T07:20:08.804534Z","subdistrict_id":3374070004,"category_id":2,"date_deleted":null,"name_en":"Universitas Diponegoro (UNDIP)","postal_code":null,"deleted_by":null,"id":640,"created_by":"kumala","booster":false,"name":"Universitas Diponegoro (UNDIP)","slug":"universitas-diponegoro-undip","tag":"UNDIP","address":"Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275, Indonesia","lon":110.4408910250658,"province_id":33,"lat":-7.051961979310572,"is_deleted":false,"updated_by":"kumala","city_id":3374,"date_created":"2022-06-22T07:42:27.255738Z","country_id":84},
{"district_id":3404070,"date_updated":"2023-09-19T06:31:52.590361Z","subdistrict_id":3404070001,"category_id":2,"date_deleted":null,"name_en":"Universitas Gadjah Mada","postal_code":null,"deleted_by":null,"id":708,"created_by":"kumala","booster":false,"name":"Universitas Gadjah Mada (UGM)","slug":"universitas-gadjah-mada-ugm","tag":"UGM","address":"Bulaksumur, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281","lon":110.37749912945203,"province_id":34,"lat":-7.7713680901618325,"is_deleted":false,"updated_by":"kumala","city_id":3404,"date_created":"2022-08-04T06:45:14.271629Z","country_id":84},
{"district_id":3578030,"date_updated":"2024-07-09T08:45:58.716727Z","subdistrict_id":3578030004,"category_id":2,"date_deleted":null,"name_en":"Universitas Negeri Surabaya (UNESA) Ketintang","postal_code":null,"deleted_by":null,"id":2938,"created_by":"kumala","booster":false,"name":"Universitas Negeri Surabaya (UNESA) Ketintang","slug":"universitas-negeri-surabaya-unesa-ketintang","tag":"unesa ketintang,unesa kampus 1","address":"Jl. Ketintang, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur 60231","lon":112.72725346393304,"province_id":35,"lat":-7.315252913834344,"is_deleted":false,"updated_by":null,"city_id":3578,"date_created":"2024-07-09T08:45:58.716706Z","country_id":84}
]

-- Create bulk query insert from data above


INSERT INTO buildings_pointofinterest
  (district_id, date_updated, subdistrict_id, category_id, date_deleted, name_en, postal_code, deleted_by, id, created_by, booster, name, slug, tag, address, lon, province_id, lat, is_deleted, updated_by, city_id, date_created, country_id)
  VALUES
  (3374070, '2024-06-21T07:20:08.804534Z', 3374070004, 2, null, 'Universitas Diponegoro (UNDIP)', null, null, 640, 'kumala', false, 'Universitas Diponegoro (UNDIP)', 'universitas-diponegoro-undip', 'UNDIP', 'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275, Indonesia', 110.4408910250658, 33, -7.051961979310572, false, 'kumala', 3374, '2022-06-22T07:42:27.255738Z', 84),
  (3404070, '2023-09-19T06:31:52.590361Z', 3404070001, 2, null, 'Universitas Gadjah Mada', null, null, 708, 'kumala', false, 'Universitas Gadjah Mada (UGM)', 'universitas-gadjah-mada-ugm', 'UGM', 'Bulaksumur, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', 110.37749912945203, 34, -7.7713680901618325, false, 'kumala', 3404, '2022-08-04T06:45:14.271629Z', 84),
  (3578030, '2024-07-09T08:45:58.716727Z', 3578030004, 2, null, 'Universitas Negeri Surabaya (UNESA) Ketintang', null, null, 2938, 'kumala', false, 'Universitas Negeri Surabaya (UNESA) Ketintang', 'universitas-negeri-surabaya-unesa-ketintang', 'unesa ketintang,unesa kampus 1', 'Jl. Ketintang,', 112.72725346393304, 35, -7.315252913834344, false, null, 3578, '2024-07-09T08:45:58.716706Z', 84),
  (3273250, '2023-12-20T08:55:03.316211Z', 3273250004, 2, null, 'Universitas Pendidikan Indonesia', null, null, 432, '', false, 'Universitas Pendidikan Indonesia', 'universitas-pendidikan-indonesia', 'UPI,upi bandung,upi lembang', 'Jl. Dr. Setiabudi No.229, Isola, Kec. Sukasari, Kota Bandung, Jawa Barat 40154, Indonesia', 107.5936498601473, 32, -6.86241422260081, false, 'kumala', 3273, '2022-01-14T09:17:12.146405Z', 84);

-- Insert query for 3273250
INSERT INTO buildings_pointofinterest
  (district_id, date_updated, subdistrict_id, category_id, date_deleted, name_en, postal_code, deleted_by, id, created_by, booster, name, slug, tag, address, lon, province_id, lat, is_deleted, updated_by, city_id, date_created, country_id)
  VALUES
  (3273250, '2023-12-20T08:55:03.316211Z', 3273250004, 2, null, 'Universitas Pendidikan Indonesia', null, null, 432, '', false, 'Universitas Pendidikan Indonesia', 'universitas-pendidikan-indonesia', 'UPI,upi bandung,upi lembang', 'Jl. Dr. Setiabudi No.229, Isola, Kec. Sukasari, Kota Bandung, Jawa Barat 40154, Indonesia', 107.5936498601473, 32, -6.86241422260081, false, 'kumala', 3273, '2022-01-14T09:17:12.146405Z', 84);


[
{"district_id":3173020,"date_updated":"2024-06-20T07:47:00.470262Z","subdistrict_id":3173020002,"category_id":6,"date_deleted":null,"name_en":"Stasiun Cikini","postal_code":null,"deleted_by":null,"id":84,"created_by":null,"booster":false,"name":"Stasiun Cikini","slug":"stasiun-cikini","tag":"Stasiun Cikini","address":"Jl. Pegangsaan Timur No. 5 RT.4, Pegangsaan, Kec. Menteng, Daerah Khusus Ibukota Jakarta 10310","lon":106.84124,"province_id":31,"lat":-6.19851,"is_deleted":false,"updated_by":"kumala","city_id":3173,"date_created":"2021-08-06T04:37:21.372352Z","country_id":84},
{"district_id":3171030,"date_updated":"2023-12-28T10:03:10.117328Z","subdistrict_id":3171030005,"category_id":7,"date_deleted":null,"name_en":"MRT Station Haji Nawi","postal_code":null,"deleted_by":null,"id":255,"created_by":null,"booster":false,"name":"Stasiun MRT Haji Nawi","slug":"stasiun-mrt-haji-nawi","tag":"","address":"Haji Nawi, Cipete Sel., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia","lon":106.7973327,"province_id":31,"lat":-6.2666813,"is_deleted":false,"updated_by":"kumala","city_id":3171,"date_created":"2021-08-06T04:37:23.011144Z","country_id":84},
{"district_id":3172050,"date_updated":"2023-09-15T10:19:41.612276Z","subdistrict_id":3172050007,"category_id":8,"date_deleted":null,"name_en":"LRT Station Cawang","postal_code":null,"deleted_by":null,"id":2081,"created_by":"kumala","booster":false,"name":"Stasiun LRT Cawang","slug":"stasiun-lrt-cawang","tag":null,"address":"Jl. Letjen M.T. Haryono, RT.1/RW.6, Cawang, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13630","lon":106.87122696395305,"province_id":31,"lat":-6.245874227130332,"is_deleted":false,"updated_by":null,"city_id":3172,"date_created":"2023-09-15T10:19:41.612254Z","country_id":84},
{"district_id":3171100,"date_updated":"2023-09-25T06:55:20.408688Z","subdistrict_id":3171100003,"category_id":8,"date_deleted":null,"name_en":"LRT Station Rasuna Said","postal_code":null,"deleted_by":null,"id":2148,"created_by":"kumala","booster":false,"name":"Stasiun LRT Rasuna Said","slug":"stasiun-lrt-rasuna-said","tag":null,"address":"Plaza Festival, RT.2/RW.5, Kuningan, Karet Kuningan, Setiabudi, South Jakarta City, Jakarta 12940","lon":106.83247114665583,"province_id":31,"lat":-6.2225156586833235,"is_deleted":false,"updated_by":null,"city_id":3171,"date_created":"2023-09-25T06:55:20.408663Z","country_id":84}
]

// insert into table buildings_pointofinterest data above

INSERT INTO buildings_pointofinterest
  (district_id, date_updated, subdistrict_id, category_id, date_deleted, name_en, postal_code, deleted_by, id, created_by, booster, name, slug, tag, address, lon, province_id, lat, is_deleted, updated_by, city_id, date_created, country_id)
VALUES
  (3173020, '2024-06-20T07:47:00.470262Z', 3173020002, 6, null, 'Stasiun Cikini', null, null, 84, null, false, 'Stasiun Cikini', 'stasiun-cikini', 'Stasiun Cikini', 'Jl. Pegangsaan Timur No. 5 RT.4, Pegangsaan, Kec. Menteng, Daerah Khusus Ibukota Jakarta 10310', 106.84124, 31, -6.19851, false, 'kumala', 3173, '2021-08-06T04:37:21.372352Z', 84),
  (3171030, '2023-12-28T10:03:10.117328Z', 3171030005, 7, null, 'MRT Station Haji Nawi', null, null, 255, null, false, 'Stasiun MRT Haji Nawi', 'stasiun-mrt-haji-nawi', '', 'Haji Nawi, Cipete Sel., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', 106.7973327, 31, -6.2666813, false, 'kumala', 3171, '2021-08-06T04:37:23.011144Z', 84),
  (3172050, '2023-09-15T10:19:41.612276Z', 3172050007, 8, null, 'LRT Station Cawang', null, null, 2081, 'kumala', false, 'Stasiun LRT Cawang', 'stasiun-lrt-cawang', null, 'Jl. Letjen M.T. Haryono, RT.1/RW.6, Cawang, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13630', 106.87122696395305, 31, -6.245874227130332, false, null, 3172, '2023-09-15T10:19:41.612254Z', 84),
  (3171100, '2023-09-25T06:55:20.408688Z', 3171100003, 8, null, 'LRT Station Rasuna Said', null, null, 2148, 'kumala', false, 'Stasiun LRT Rasuna Said', 'stasiun-lrt-rasuna-said', null, 'Plaza Festival, RT.2/RW.5, Kuningan, Karet Kuningan, Setiabudi, South Jakarta City, Jakarta 12940', 106.83247114665583, 31, -6.2225156586833235, false, null, 3171, '2023-09-25T06:55:20.408663Z', 84);


[
{"district_id":3171100,"date_updated":"2024-06-06T06:51:51.822062Z","subdistrict_id":3171100002,"category_id":18,"date_deleted":null,"name_en":"Kuningan","postal_code":null,"deleted_by":null,"id":2809,"created_by":"kumala","booster":false,"name":"Kuningan","slug":"kuningan","tag":null,"address":"Karet Kuningan Kecamatan Setiabudi Kota Jakarta Selatan Daerah Khusus Ibukota Jakarta","lon":106.82477777656867,"province_id":31,"lat":-6.216444197978109,"is_deleted":false,"updated_by":"kumala","city_id":3171,"date_created":"2024-06-06T06:14:45.555152Z","country_id":84}
]

-- Create query to insert data above

INSERT INTO buildings_pointofinterest
  (district_id, date_updated, subdistrict_id, category_id, date_deleted, name_en, postal_code, deleted_by, id, created_by, booster, name, slug, tag, address, lon, province_id, lat, is_deleted, updated_by, city_id, date_created, country_id)
VALUES
  (3171100, '2024-06-06T06:51:51.822062Z', 3171100002, 18, null, 'Kuningan', null, null, 2809, 'kumala', false, 'Kuningan', 'kuningan', null, 'Karet Kuningan Kecamatan Setiabudi Kota Jakarta Selatan Daerah Khusus Ibukota Jakarta', 106.82477777656867, 31, -6.216444197978109, false, 'kumala', 3171, '2024-06-06T06:14:45.555152Z', 84);



-- Create table public.buildings_building

CREATE TABLE buildings_building (
  id SERIAL PRIMARY KEY,
  building_name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE buildings_building ADD COLUMN lat double precision NOT NULL DEFAULT 0;
ALTER TABLE buildings_building ADD COLUMN lon double precision NOT NULL DEFAULT 0;

INSERT INTO buildings_building (building_name) VALUES ('Gedung A'), ('Gedung B'), ('Gedung C'), ('Gedung D'), ('Gedung E');

SELECT * FROM buildings_building;


-- Create table public.buildings_pointofinterest

CREATE TABLE buildings_pointofinterest (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE buildings_pointofinterest ADD COLUMN lat double precision NOT NULL DEFAULT 0;
ALTER TABLE buildings_pointofinterest ADD COLUMN lon double precision NOT NULL DEFAULT 0;

-- Create table buildings_buildingpointinterest
-- Table mapping between buildings_building and buildings_pointofinterest
CREATE TABLE buildings_buildingpointinterest (
  id SERIAL PRIMARY KEY,
  building_id INTEGER NOT NULL,
  point_of_interest_id INTEGER NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (building_id) REFERENCES buildings_building (id),
  FOREIGN KEY (point_of_interest_id) REFERENCES buildings_pointofinterest (id)
);

INSERT INTO buildings_buildingpointinterest
  (building_id, point_of_interest_id)
VALUES
  (1, 1),
  (1, 6),` // search_important: true, search_popularity: 3`
  (1, 3),

  (2, 4),
  (2, 7),` // search_important: true, search_popularity: 1`
  (2, 6),` // search_important: true, search_popularity: 3`

  (3, 7),` // search_important: true, search_popularity: 1`
  (3, 8),` // search_important: true, search_popularity: 2`
  (3, 9),

  (4, 1),
  (4, 2),
  (4, 3),

  (5, 2),
  (5, 3),
  (5, 5);

-- add field distance to buildings_buildingpointinterest
ALTER TABLE buildings_buildingpointinterest ADD COLUMN distance double precision NOT NULL default 1;

UPDATE buildings_buildingpointinterest SET distance=2 WHERE building_id=2 AND point_of_interest_id=7;

INSERT INTO
  buildings_pointofinterest (name) VALUES ('Kantor Pos'), ('Kantor Polisi'), ('Kantor Desa'), ('Kantor Kecamatan'), ('Kantor Bupati'), ('MRT Station'), ('LRT Station'), ('Stasiun Kereta'), ('Bandara'), ('Pelabuhan');


ALTER TABLE buildings_pointofinterest ADD COLUMN search_important boolean not null default false;
ALTER TABLE buildings_pointofinterest ADD COLUMN search_popularity double precision not null default 1;

UPDATE buildings_pointofinterest SET search_important = true WHERE name ILIKE '%Station%';
UPDATE buildings_pointofinterest set search_important = true WHERE id=8;
UPDATE buildings_pointofinterest SET search_popularity=3 WHERE id=6;
UPDATE buildings_pointofinterest SET search_popularity=2 WHERE id=8;

CREATE TABLE public.asset_poi_important (
  asset_id integer NOT NULL,
  poi_id integer NOT NULL,
  score double precision NOT NULL,

  PRIMARY KEY (asset_id, poi_id),
  FOREIGN KEY (asset_id) REFERENCES buildings_building (id),
  FOREIGN KEY (poi_id) REFERENCES buildings_pointofinterest (id)
);

-- Insert table public.asset_poi_important

INSERT INTO public.asset_poi_important
  (asset_id, poi_id, score)
  VALUES
  (1, 6, 3),
  (1, 7, 2),
  (2, 6, 3),
  (2, 8, 2),
  (3, 6, 3),
  (3, 7, 2),
  (4, 6, 3),
  (4, 8, 2),
  (5, 6, 3),
  (5, 8, 2);

-- JOIN TABLE buildings_building and buildings_pointofinterest with asset_poi_important

SELECT
  asset.id AS asset_id,
  asset.building_name,
  poi.id AS poi_id,
  poi.name AS poi_name,
  api.score
FROM
  buildings_building AS asset
  JOIN asset_poi_important AS api ON asset.id = api.asset_id
  JOIN buildings_pointofinterest AS poi ON api.poi_id = poi.id
WHERE asset.id = 1
ORDER BY api.score DESC
LIMIT 1;

-- Get data from buildings_building and buildings_pointofinterest with search_important = true
SELECT 
  asset.id AS building_id,
  asset.building_name,
  poimap.point_of_interest_id AS poi_id,
  poimap.distance AS distance,
  poi.search_important,
  poi.search_popularity
FROM
  buildings_building AS asset
  JOIN buildings_buildingpointinterest AS poimap
ON asset.id = poimap.building_id
  JOIN buildings_pointofinterest AS poi
ON poi.id = poimap.point_of_interest_id
WHERE poi.search_important=true
ORDER by asset.id ASC;





WITH t AS (
    SELECT DISTINCT ON (category_id)
    	poi.id, poi.name, poi.date_created, poi.date_updated, poi.is_deleted, 
    	poi.date_deleted, poi.deleted_by, poi.name_en, poi.created_by, poi.updated_by, poi.address, 
    	poi.booster, poi.category_id, cp.name as category_name, poi.city_id, poi.country_id, 
    	poi.district_id, poi.lat, poi.lon, poi.postal_code, poi.province_id, poi.subdistrict_id, poi.tag, poi.slug
    FROM 
    	buildings_pointofinterest poi
    LEFT JOIN 
    	buildings_categorypoi cp ON poi.category_id = cp.id
    WHERE 
    	poi.is_deleted = false
    ORDER BY category_id
) SELECT t.id, t.name FROM t;

-- execute script.sql
psql -U username -d database_name -f path/to/script.sql


-- buildings_pointofinterest
-- id |       name       |        created_at         |        updated_at         | search_important | search_popularity | lat | lon 
-- ----+------------------+---------------------------+---------------------------+------------------+-------------------+-----+-----
--   1 | Kantor Pos       | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--   2 | Kantor Polisi    | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--   3 | Kantor Desa      | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--   4 | Kantor Kecamatan | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--   5 | Kantor Bupati    | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--   9 | Bandara          | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--  10 | Pelabuhan        | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | f                |                 1 |   0 |   0
--   7 | LRT Station      | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | t                |                 1 |   0 |   0
--   8 | Stasiun Kereta   | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | t                |                 2 |   0 |   0
--   6 | MRT Station      | 2024-11-13 10:34:49.99641 | 2024-11-13 10:34:49.99641 | t                |                 3 |   0 |   0


-- buildings_building
-- id | building_name |        created_at         |        updated_at         | lat | lon 
-- ----+---------------+---------------------------+---------------------------+-----+-----
--   1 | Gedung A      | 2024-11-13 10:32:51.68575 | 2024-11-13 10:32:51.68575 |   0 |   0
--   2 | Gedung B      | 2024-11-13 10:32:51.68575 | 2024-11-13 10:32:51.68575 |   0 |   0
--   3 | Gedung C      | 2024-11-13 10:32:51.68575 | 2024-11-13 10:32:51.68575 |   0 |   0
--   4 | Gedung D      | 2024-11-13 10:32:51.68575 | 2024-11-13 10:32:51.68575 |   0 |   0
--   5 | Gedung E      | 2024-11-13 10:32:51.68575 | 2024-11-13 10:32:51.68575 |   0 |   0

UPDATE buildings_building SET lat=-6.31 AND lon=106.68 WHERE id=1;

-- Update set multiple
-- {
--   "less_than_5km": [
--     {
--       "name": "Taman Mini Indonesia Indah",
--       "lat": -6.3020,
--       "lon": 106.8952
--     },
--     {
--       "name": "Museum Purna Bhakti Pertiwi",
--       "lat": -6.3052,
--       "lon": 106.8958
--     },
--     {
--       "name": "Museum Transportasi",
--       "lat": -6.3029,
--       "lon": 106.8950
--     },
--     {
--       "name": "Museum Listrik dan Energi Baru",
--       "lat": -6.3056,
--       "lon": 106.8962
--     },
--     {
--       "name": "Taman Legenda Keong Emas",
--       "lat": -6.3028,
--       "lon": 106.8954
--     },
--     {
--       "name": "SnowBay Waterpark TMII",
--       "lat": -6.3041,
--       "lon": 106.8953
--     },
--     {
--       "name": "Taman Anggrek Indonesia Permai",
--       "lat": -6.3024,
--       "lon": 106.8960
--     },
--     {
--       "name": "Taman Burung TMII",
--       "lat": -6.3050,
--       "lon": 106.8965
--     },
--     {
--       "name": "Masjid At-Tin",
--       "lat": -6.3034,
--       "lon": 106.8967
--     },
--     {
--       "name": "Gedung Sasana Kriya TMII",
--       "lat": -6.3022,
--       "lon": 106.8959
--     }
--   ],
--   "greater_than_5km": [
--     {
--       "name": "Kota Tua Jakarta",
--       "lat": -6.1352,
--       "lon": 106.8133
--     },
--     {
--       "name": "Taman Suropati",
--       "lat": -6.1991,
--       "lon": 106.8320
--     },
--     {
--       "name": "Monumen Nasional (Monas)",
--       "lat": -6.1751,
--       "lon": 106.8272
--     },
--     {
--       "name": "Pantai Ancol",
--       "lat": -6.1187,
--       "lon": 106.8392
--     },
--     {
--       "name": "Kebun Binatang Ragunan",
--       "lat": -6.3081,
--       "lon": 106.8204
--     }
--   ]
-- }

UPDATE buildings_building SET lat=-6.31, lon=106.68 WHERE id=1;
UPDATE buildings_building SET lat=-6.31, lon=106.68;

-- update query lat lon json above dengan data buildings_pointofinterest

--       "name": "Kota Tua Jakarta",
--       "lat": -6.1352,
--       "lon": 106.8133

-- lat: -6.31
-- lon: 106.68

"lat": -6.1187,
    "lon": 106.8392,

UPDATE buildings_pointofinterest SET lat=-6.1352, lon=106.8133 WHERE id=1;
UPDATE buildings_pointofinterest SET lat=-6.31, lon=106.68 WHERE id=2;
UPDATE buildings_pointofinterest SET lat=-6.1187, lon=106.8392 WHERE id=3;
UPDATE buildings_pointofinterest SET lat=-6.3056, lon=106.8962 WHERE id=4;
UPDATE buildings_pointofinterest SET lat=-6.3028, lon=106.8954 WHERE id=5;
UPDATE buildings_pointofinterest SET lat=-6.3108, lon=106.6921 WHERE id=6;
UPDATE buildings_pointofinterest SET lat=-6.3174, lon=106.6753 WHERE id=7;
UPDATE buildings_pointofinterest SET lat=-6.3050, lon=106.8965 WHERE id=8;
UPDATE buildings_pointofinterest SET lat=-6.3034, lon=106.8967 WHERE id=9;
UPDATE buildings_pointofinterest SET lat=-6.3022, lon=106.8959 WHERE id=10;



-- lat: -6.31
-- lon: 106.68
-- generate lat lon with near possition above

-- Query mengambil semua pointofinterest dengan search_important = true dan distance < 5km
SELECT
  earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.31, 106.68)) as distance_in_meters, poi.id, poi.search_important, poi.search_popularity
FROM buildings_pointofinterest poi
WHERE poi.search_important=true AND earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.31, 106.68)) < 5000
ORDER BY distance_in_meters ASC;

WITH t AS(
  SELECT
  earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.31, 106.68)) as distance_in_meters, poi.id, poi.search_important, poi.search_popularity
FROM buildings_pointofinterest poi
WHERE poi.search_important=true
) SELECT * FROM t WHERE distance_in_meters < 5000 ORDER BY distance_in_meters ASC;



SELECT
  earth_distance(ll_to_earth(poi.lat, poi.lon), ll_to_earth(-6.31, 106.68)) AS distance_in_meters,
  poi.id,
  poi.search_important,
  poi.search_popularity,
  (poi.search_popularity / NULLIF(earth_distance(ll_to_earth(poi.lat, poi.lon), ll_to_earth(-6.31, 106.68)), 0)) AS score
FROM
  buildings_pointofinterest poi
WHERE
  poi.search_important = TRUE
  AND earth_distance(ll_to_earth(poi.lat, poi.lon), ll_to_earth(-6.31, 106.68)) < 5000
ORDER BY
  score DESC;



SELECT 
        		earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.1951851, 106.816837)) as distance_meter, 
    			earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.1951851, 106.816837)) as score,
        		id,
    			search_important,
    			search_popularity
    		FROM 
        		buildings_pointofinterest
    		WHERE 
    		    search_important = TRUE AND
    			is_deleted = FALSE AND
        		(1 / (1   earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.1951851, 106.816837)))) * 0.4   (poi.search_popularity * 0.6) <= 5000
    		
    		ORDER BY search_popularity DESC, distance_meter ASC


SELECT 
        		earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)) as distance_meter, 
    			earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)) as score,
        		id,
    			search_important,
    			search_popularity
    		FROM 
        		buildings_pointofinterest
    		WHERE 
    		    search_important = TRUE AND
        		(1 / (1 + earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)))) * 0.4 + (search_popularity * 0.6) <= 5000
    		
    		ORDER BY search_popularity DESC, distance_meter ASC;


        (1 / (1 + earth_distance(ll_to_earth(poi.lat, poi.lon),ll_to_earth(-6.1951851, 106.816837)))) * 0.4 + (poi.search_popularity * 0.6)




// - Idx - Nearest Distance - IsDeleted - Distance From Monas 	- Distance From PIK Ave - Category   - Is Deleted
// - 0	 - Monas    		- false 	- 784    				- 13.045 				- category1		- false
// - 1	 - Monas    		- false 	- 965    				- 13.237 				- category2		- false
// - 2 	 - Monas    		- true  	- 387    				- 12.800 				- category2		- false
// - 3 	 - Pik Ave  		- false 	- 12.214 				- 254    				- category1		- false
// - 4 	 - Pik Ave  		- true  	- 11.593 				- 828    				- category1		- false
// - 5 	 - Pik Ave  		- false 	- 13.131 				- 2004   				- category2		- false
// - 6 	 - Monas    		- false 	- 2.376  				- 11.611 				- category3		- false
// - 7 	 - Pik Ave  		- false 	- 11.054 				- 1.383  				- category4		- false
// - 8 	 - Pik Ave  		- true  	- 11.451 				- 1.110  				- category4		- false
// - 9 	 - Monas    		- true  	- 701    				- 11.739 				- category4		- false
// - 10	 - Monas    		- false 	- 1.357  				- 11.233 				- category4		- false
// - 11	 - Monas    		- false 	- 2.131  				- 13.139 				- category1		- false



SELECT
  earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)) as distance_meter,
  earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)) as score,
  id, search_important, search_popularity
FROM buildings_pointofinterest WHERE search_important = TRUE AND (1 / (1 + earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)))) * 0.4 + (search_popularity * 0.6) <= 5000 ORDER BY search_popularity DESC, distance_meter ASC;







(1 / (1   earth_distance(ll_to_earth(lat, lon),ll_to_earth(-6.1951851, 106.816837)))) * 0.4   (search_popularity * 0.6) <= 5000


SELECT 
  asset_id, poi_id, score
FROM asset_poi_important AS API
JOIN(
  SELECT
    asset_id, score
  FROM asset_poi_important
    WHERE asset_id = API.asset_id
  ORDER BY score DESC, asset_id, poi_id LIMIT 2
) AS SQ
ON API.asset_id = SQ.asset_id;



-- Table asset_poi_important
--  asset_id | poi_id | score | poi_name 
-- ----------+--------+-------+----------
--         1 |      6 |     3 | 
--         1 |      7 |     2 | 
--         2 |      6 |     3 | 
--         2 |      8 |     2 | 
--         3 |      6 |     3 | 
--         3 |      7 |     2 | 
--         4 |      6 |     3 | 
--         4 |      8 |     2 | 
--         5 |      6 |     3 | 
--         5 |      8 |     2 | 

-- Query to get list with asset_id = 1, 2, and 3
-- Limit 1 for each asset id
-- sample results
--  asset_id | poi_id | score | poi_name 
-- ----------+--------+-------+----------
--         1 |      6 |     3 | 
--         2 |      6 |     3 | 
--         3 |      6 |     3 |


SELECT asset_id, poi_id, score, poi_name
FROM asset_poi_important p
WHERE (
    SELECT COUNT(*)
    FROM asset_poi_important sub
    WHERE sub.asset_id = p.asset_id
      AND sub.poi_id <= p.poi_id
) <= 1
AND asset_id IN (1, 2, 3)
ORDER BY asset_id, score DESC;

SELECT asset_id, poi_id, score, poi_name
FROM asset_poi_important p
WHERE 
asset_id IN (1)
ORDER BY asset_id, score DESC;

SELECT COUNT(*)
    FROM asset_poi_important sub
    WHERE sub.asset_id = 1
      AND sub.poi_id = 6;


-- Asset Id: 705
-- poi id: 117

INSERT INTO asset_important_poi (asset_id, poi_id, score) VALUES (705, 117, 1.8);
