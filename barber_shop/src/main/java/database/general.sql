create database barber_shop;
use barber_shop;
CREATE TABLE role (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL
);
CREATE TABLE account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id)
        REFERENCES role (role_id)
);
CREATE TABLE service (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL
);
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(255) NOT NULL,
    birthday date,
    salary DOUBLE NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    gender BIT NOT NULL,
    id_card VARCHAR(12) NOT NULL,
    address VARCHAR(255) NOT NULL,
    account_id INT NOT NULL,
    FOREIGN KEY (account_id)
        REFERENCES account (account_id)
);
CREATE TABLE customer_type (
    customer_type_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_type_name VARCHAR(50)
);
CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(255) NOT NULL,
    birthday VARCHAR(10),
    phone_number VARCHAR(10),
    gender BIT NOT NULL,
    address VARCHAR(255),
    customer_type_id INT NOT NULL,
    account_id INT NOT NULL,
    FOREIGN KEY (account_id)
        REFERENCES account (account_id),
    FOREIGN KEY (customer_type_id)
        REFERENCES customer_type (customer_type_id)
);
CREATE TABLE booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_date DATE NOT NULL,
    account_id INT NOT NULL,
    booking_status BIT,
    FOREIGN KEY (account_id)
        REFERENCES account (account_id)
);
CREATE TABLE booking_detail_service (
    booking_detail_service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_id INT NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (service_id)
        REFERENCES service (service_id),
    FOREIGN KEY (booking_id)
        REFERENCES booking (booking_id)
);



insert into customer_type(customer_type_name) values("Member");
insert into customer_type(customer_type_name) values("Gold");
insert into customer_type(customer_type_name) values("Diamond");

insert into role (role_name)
values ("Khách hàng"),("Nhân viên"),("Admin");
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus1', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus2', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus3', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus4', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus5', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus6', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus7', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus8', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus9', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('cus10', '123', '1');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('em1', '123', '2');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('em2', '123', '2');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('em3', '123', '2');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('em4', '123', '2');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('em5', '123', '2');
INSERT INTO `barber_shop`.`account` (`username`, `password`, `role_id`) VALUES ('adm', '123', '3');


INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Cắt tóc', 50000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Gội đầu', 30000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Cạo mặt', 20000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Lấy ráy tai', 20000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Nhuộm tóc', 300000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Uốn tóc', 300000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Combo truyền thống (cắt,gội,sấy)', 100000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Combo vip 1 (Cắt, gội, sấy, matxa, cạo mặt)', 120000);
INSERT INTO `barber_shop`.`service` (`service_name`, `price`) VALUES ('Combo vip 2 (Uốn, nhuộm tóc)', 500000);


INSERT INTO `barber_shop`.`employee` (`employee_name`, `birthday`, `salary`, `phone_number`, `gender`, `id_card`, `address`, `account_id`)
VALUES ('Kim Ngọc Thành', '2001-09-13', 9000000, '0961297922', 1, '001201011357', 'Hà Nội', 11);
INSERT INTO `barber_shop`.`employee` (`employee_name`, `birthday`, `salary`, `phone_number`, `gender`, `id_card`, `address`, `account_id`)
VALUES ('Huỳnh Lê Tấn Cường', '1996-01-01', 8000000, '0983391536', 1, '001201011358', 'Đà Nẵng', 12);
INSERT INTO `barber_shop`.`employee` (`employee_name`, `birthday`, `salary`, `phone_number`, `gender`,  `id_card`, `address`, `account_id`)
VALUES ('Trần Việt Duy', '1989-04-05', 7000000, '0386981720', 1, '001201011355', 'Hồ Chí Minh', 13);
INSERT INTO `barber_shop`.`employee` (`employee_name`, `birthday`, `salary`, `phone_number`, `gender`,  `id_card`, `address`, `account_id`)
VALUES ('Ngô Đình Quân', '1998-09-10', 7000000, '0355657784', 1,  '001201011322', 'Cần Thơ', 14);
INSERT INTO `barber_shop`.`employee` (`employee_name`, `birthday`, `salary`, `phone_number`, `gender`, `id_card`, `address`, `account_id`)
VALUES ('Trần Minh Pháp', '1998-01-01', 6000000, '0254123451', 1, '001201011999', 'Bình Dương', 15);


INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Nguyễn Thành Thân', '2001-01-01', '0977754321', 1, 'Đà nẵng', 1, 1);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Trần Mỹ Duyên', '2000-01-01', '0985555321', 1, 'Hà Nội', 1, 2);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Huỳnh Công Duy', '2005-01-01', '0900000321', 1, 'Sài Gòn', 1, 3);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Phạm Khách Duy', '2003-01-01', '0987114321', 1, 'Bình Dương', 1, 4);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Nguyễn Thị Lan', '1999-01-01', '0987644321', 1, 'Đà nẵng', 1, 5);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Nguyễn Tiến Đạt', '1989-01-01', '0987774321', 1, 'Đà nẵng', 1, 6);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Ngô Ngữ Hoàng Nhật', '2003-01-01', '0997654321', 1, 'Hà Nội', 1, 7);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Nguyễn Phúc Quý', '2001-02-01', '0987754321', 1, 'Hải Dương', 1, 8);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Trần Viết Cao', '2001-01-02', '0987652321', 1, 'Quảng Nam', 1, 9);
INSERT INTO `barber_shop`.`customer` (`customer_name`, `birthday`, `phone_number`, `gender`, `address`, `customer_type_id`, `account_id`) VALUES ('Phạm Thị Huyền', '2001-02-01', '0987114321', 1, 'Đà nẵng', 1, 10);


INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-09-07', 1, 1);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-09-06', 2, 1);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-09-06', 3, 1);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-09-05', 4, 1);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-03-05', 5, 0);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-03-04', 6, 0);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-04-04', 7, 0);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-01-03', 8, 0);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-02-03', 9, 0);
INSERT INTO `barber_shop`.`booking` (`booking_date`, `account_id`, `booking_status`) VALUES ('2023-02-03', 10, 0);


INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('1', '1');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('1', '2');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('2', '2');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('2', '3');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('9', '4');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('3', '5');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('4', '6');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('1', '7');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('1', '8');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('2', '9');
INSERT INTO `barber_shop`.`booking_detail_service` (`service_id`, `booking_id`) VALUES ('6', '10');




delimiter //
create procedure display_all()
begin
select *
from employee;
end //
delimiter ;


delimiter //
create procedure add_employee(employee_name varchar(255), birthday varchar(10), salary double, phone_number varchar(10), gender bit, id_card varchar(12), address varchar(255), account_id int)
begin
insert into employee(employee.employee_name,employee.birthday,employee.salary,employee.phone_number,employee.gender,employee.id_card,employee.address,employee.account_id)
values (employee_name,birthday,salary,phone_number,gender,id_card,address,account_id);
end //
delimiter ;


delimiter //
create procedure edit_employee(employee_id int, employee_name varchar(255), birthday date, salary double, phone_number varchar(10), gender bit, id_card varchar(12), address varchar(255))
begin
SET SQL_SAFE_UPDATES = 0;
update employee
set employee.employee_name = employee_name, employee.birthday = birthday, employee.salary = salary, employee.phone_number=phone_number, employee.gender = gender,employee.id_card = id_card,employee.address = address
where employee.employee_id = employee_id;
SET SQL_SAFE_UPDATES = 1;
end //
delimiter ;


delimiter //
create procedure delete_employee(employee_id int)
begin
delete from employee
where employee.employee_id=employee_id;
end //


delimiter //
create procedure get_list_account()
begin
select employee.employee_name as name,account.username,account.password,account.account_id,role.role_name
from account
join role on account.role_id=role.role_id
right join employee on account.account_id=employee.account_id
UNION ALL
select customer.customer_name,account.username,account.password,account.account_id,role.role_name
from account
join role on account.role_id=role.role_id
right join customer on account.account_id=customer.account_id;
end //
delimiter ;


delimiter //
create procedure select_booking()
begin
select c.customer_name, b.booking_date,b.booking_status, sum(s.price) as sum
from booking b
join account a on b.account_id = a.account_id
join customer c on a.account_id = c.account_id
join booking_detail_service bds on b.booking_id = bds.booking_id
join service s on bds.service_id = s.service_id
group by c.customer_name,  b.booking_id
order by b.booking_date desc;
end //
delimiter ;



delimiter //
create procedure select_booking_emp()
begin
select c.customer_name, b.booking_date,b.booking_status, sum(s.price) as sum
from booking b
join account a on b.account_id = a.account_id
join customer c on a.account_id = c.account_id
join booking_detail_service bds on b.booking_id = bds.booking_id
join service s on bds.service_id = s.service_id
where b.booking_date >= curdate()
group by c.customer_name,  b.booking_id
order by b.booking_date desc;
end //
delimiter ;


delimiter //
create procedure select_booking_history(in booking_id int)
begin
SELECT c.customer_name, b.booking_date, b.booking_id, SUM(s.price) AS total_price
FROM booking b
JOIN account a ON b.account_id = a.account_id
JOIN customer c ON a.account_id = c.account_id
JOIN booking_detail_service bds ON b.booking_id = bds.booking_id
JOIN service s ON bds.service_id = s.service_id
WHERE b.account_id = booking_id
GROUP BY c.customer_name, b.booking_date, b.booking_id
order by b.booking_date desc;
end //
delimiter ;


call select_booking_history(2)  ;
delimiter //
create procedure select_booking_dto(in id int)
begin
select c.customer_name, b.booking_date, sum(s.price) as sum
from booking b
join account a on b.account_id = a.account_id
join customer c on a.account_id = c.account_id
join booking_detail_service bds on b.booking_id = bds.booking_id
join service s on bds.service_id = s.service_id
where b.account_id=id
group by c.customer_name,b.booking_id,b.booking_date
order by b.booking_date desc;
end //
delimiter ;


DELIMITER //
create procedure update_service(service_name varchar(255), price double, id int)
begin
update service
set service_name=service_name, price=price
where service_id = id;
end //
DELIMITER ;


DELIMITER //
create procedure insert_service(name varchar(255), price double)
begin
insert into service(service_name, price)
values (name,price);
end //
DELIMITER ;