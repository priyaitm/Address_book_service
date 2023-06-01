...........................................UC1............................................

mysql> create database book_service;
Query OK, 1 row affected (0.09 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| book_service       |
| demo               |
| demo2              |
| demo_db            |
| information_schema |
| institution        |
| mysql              |
| payroll_service    |
| performance_schema |
| sys                |
+--------------------+
10 rows in set (0.00 sec)

mysql> use book_service;
Database changed
mysql>
................................................................UC2............................................

mysql> create table Address_book(first_name varchar(20) not null ,last_name varchar(25), city varchar(30),state varchar(20),zip_number int (10),phone_number BIGINT (20),email varchar(50));
Query OK, 0 rows affected, 2 warnings (0.26 sec)

mysql> desc Address_book;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| first_name   | varchar(20) | NO   |     | NULL    |       |
| last_name    | varchar(25) | YES  |     | NULL    |       |
| city         | varchar(30) | YES  |     | NULL    |       |
| state        | varchar(20) | YES  |     | NULL    |       |
| zip_number   | int         | YES  |     | NULL    |       |
| phone_number | bigint      | YES  |     | NULL    |       |
| email        | varchar(50) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.04 sec)
...............................................................UC3..................................................

mysql> insert into  Address_book(first_name, last_name, city, state, zip_number, phone_number, email ) values ("Priya", "Chauhan", "Lucknow", "UP", 221603, 7380420617,  "priyachauhan47365@gmail.com" );
Query OK, 1 row affected (0.13 sec)

mysql> insert into  Address_book(first_name, last_name, city, state, zip_number, phone_number, email ) values ("Anuradha", "Singh", "Bhopal", "MP", 229603, 7980420617,  "Anuradha47365@gmail.com"
    -> );
Query OK, 1 row affected (0.11 sec)

mysql> insert into  Address_book(first_name, last_name, city, state, zip_number, phone_number, email ) values ("Atul", "Singh", "Bhopal", "Gujarat", 2279603, 7384429617,  "Atul47365@gmail.com");
Query OK, 1 row affected (0.08 sec)

mysql> insert into  Address_book(first_name, last_name, city, state, zip_number, phone_number, email ) values ("Sachin", "Singh", "Gorakhpur", "Rajasthan", 271603, 7384429617,  "sachin47365@gmail.com");
Query OK, 1 row affected (0.06 sec)

mysql>
...................................................................UC4........................................................

mysql> select * from Address_book;
+------------+-----------+-----------+---------+------------+--------------+-----------------------------+
| first_name | last_name | city      | state   | zip_number | phone_number | email                       |
+------------+-----------+-----------+---------+------------+--------------+-----------------------------+
| Anuradha   | Singh     | Bhopal    | MP      |     229603 |   7980420617 | Anuradha47365@gmail.com     |
| priya      | Chauhan   | Lucknow   | UP      |     221603 |   7380420617 | priyachauhan47365@gmail.com |
| Sachin     | Singh     | Bhopal    | Gujarat |     271603 |   7384420617 | sachine47365@gmail.com      |
| Atul       | Singh     | Gorakhpur | Chennai |     279603 |   7384429617 | atul47365@gmail.com         |
+------------+-----------+-----------+---------+------------+--------------+-----------------------------+
4 rows in set (0.00 sec)

mysql> update Address_book set phone_number = 8745674898 ,City ="Mumbai" where first_name ="Atul";
Query OK, 1 row affected (0.18 sec)
Rows matched: 1  Changed: 1  Warnings: 0


................................................................UC5............................................

mysql> delete from Address_book where first_name ="priya";
Query OK, 1 row affected (0.12 sec)


..............................................................UC6.........................................

mysql> select city from address_book;
+--------+
| city   |
+--------+
| Bhopal |
| Bhopal |
| Mumbai |
+--------+
3 rows in set (59.67 sec)

mysql> select state from address_book;
+----------+
| state    |
+--------- +
| MP       |
| Gujarat  |
| Rajasthan|
+----------+
3 rows in set (0.41 sec)

mysql>
book where city ="Bhopal" or state ="Rajasthan"' at line 1
mysql> select * from address_book where city ="Bhopal" or state ="Rajasthan";
+------------+-----------+--------+-----------+------------+--------------+-------------------------+
| first_name | last_name | city   | state     | zip_number | phone_number | email                   |
+------------+-----------+--------+-----------+------------+--------------+-------------------------+
| Anuradha   | Singh     | Bhopal | MP        |     229603 |   7980420617 | Anuradha47365@gmail.com |
| Sachin     | Singh     | Bhopal | Gujarat   |     271603 |   7384420617 | sachine47365@gmail.com  |
| Atul       | Singh     | Mumbai | Rajasthan |     279603 |   8745674898 | atul47365@gmail.com     |
+------------+-----------+--------+-----------+------------+--------------+-------------------------+
3 rows in set (0.55 sec)

..............................................  UC7.......................................
mysql> select count(*) from address_book where city ="Bhopal" or state = "MP";
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.28 sec)

mysql>
.............................................................UC8...............................................
mysql> select first_name,city  from address_book order by first_name ASC;
+------------+--------+
| first_name | city   |
+------------+--------+
| Anuradha   | Bhopal |
| Atul       | Mumbai |
| Sachin     | Bhopal |
+------------+--------+
3 rows in set (0.33 sec)

mysql>
................................................UC9.............................................................
mysql> use book_service;
Database changed
mysql> alter table address_book add Type varchar (25);
Query OK, 0 rows affected (3.24 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc address_book;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| first_name   | varchar(20) | NO   |     | NULL    |       |
| last_name    | varchar(25) | YES  |     | NULL    |       |
| city         | varchar(30) | YES  |     | NULL    |       |
| state        | varchar(20) | YES  |     | NULL    |       |
| zip_number   | int         | YES  |     | NULL    |       |
| phone_number | bigint      | YES  |     | NULL    |       |
| email        | varchar(50) | YES  |     | NULL    |       |
| Type         | varchar(25) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.56 sec)


mysql> update address_book set Type ="Family"  where first_name="Anuradha" or first_name ="Atul";
Query OK, 2 rows affected (0.09 sec)
Rows matched: 2  Changed: 2  Warnings: 0


mysql> update address_book set Type ="Friends" where first_name = "Sachine";
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update address_book set last_name ="Rao" where first_name = "Anuradha";
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update address_book set last_name ="khan" where first_name = "Amira";
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> update address_book set last_name ="khan" where first_name = "Sachin";
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update address_book set last_name ="pandey" where first_name = "Sachin";
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0
mysql> select * from address_book;
+------------+-----------+-----------+-------------+------------+--------------+-------------------------+------------+
| first_name | last_name | city      | state       | zip_number | phone_number | email                   | Type       |
+------------+-----------+-----------+-------------+------------+--------------+-------------------------+------------+
| Anuradha   | Rao       | Bhopal    | MP          |     229603 |   7980420617 | Anuradha47365@gmail.com | Fimaly     |
| Sachin     | pandey    | Bhopal    | Gujarat     |     271603 |   7384420617 | sachine47365@gmail.com  | NULL       |
| Atul       | Singh     | Mumbai    | Rajasthan   |     279603 |   8745674898 | atul47365@gmail.com     | Fimaly     |
| Aayush     | Tripathi  | Chennai   | Telangana   |     365733 |   8478787888 |  aayush4736@gamil.com   | Friends    |
| Abhisek    | Tripathi  | Pune      | Maharashtra |     365833 |   8478785688 |  abhisekh4736@gamil.com | Family     |
| Amira      | khan      | Pune      | Maharashtra |     395833 |   8478785998 |  Amira4736@gamil.com    | Profession |
| Mahina     | Singh     | Hyderabad | Telangana   |     495833 |   8478788998 |  mahima4736@gamil.com   | Profession |
+------------+-----------+-----------+-------------+------------+--------------+-------------------------+------------+
7 rows in set (0.00 sec)
.................................................................UC10...............................................

mysql> select count(*) from address_book where Type = "Family";
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.04 sec)

mysql> select count(*) from address_book where Type = "Friends";
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.03 sec)

mysql> select count(*) from address_book where Type = "Profession";
+----------+
| count(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

