create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
	cID varchar(20) not null primary key,
    cName varchar(50) not null,
    cAge int not null
);

create table Orders(
	oID varchar(20) not null primary key,
    cID varchar(20) not null,
    oDate date not null,
    oTotalPrice double not null,
    foreign key (cID) references Customer (cID)
);

create table Product(
	pID varchar(20) not null primary key,
    pName varchar(30) not null,
    pPrice double not null
);

create table OrderDetail(
	oID varchar(20),
    pID varchar(20),
    odQTY varchar(20),
    unique (oID, pID),
    foreign key (oID) references Orders (oID),
    foreign key (pID) references Product (pID)
);