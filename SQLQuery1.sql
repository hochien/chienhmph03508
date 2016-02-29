-- Created by Vertabelo (http://vertabelo.com) 

create database chienhmph03508_QLBH


-- tables
-- Table: ChitietHD
CREATE TABLE ChitietHD (
    ChitietHD int  NOT NULL,
    MaHD int  NOT NULL,
    MaSP int  NOT NULL,
    Soluong int  NOT NULL,
    CONSTRAINT ChitietHD_pk PRIMARY KEY  (ChitietHD)
)
;





-- Table: Hoadon
CREATE TABLE Hoadon (
    MaHD int  NOT NULL,
    Giatien char(12)  NOT NULL,
    MaKH int  NOT NULL,
    CONSTRAINT Hoadon_pk PRIMARY KEY  (MaHD)
)
;





-- Table: Khachhang
CREATE TABLE Khachhang (
    MaKH int  NOT NULL,
    TenKH varchar(255)  NOT NULL,
    Email varchar(255)  NULL,
    Sdt int  NULL,
    Diachi varchar(255)  NULL,
    CONSTRAINT Khachhang_pk PRIMARY KEY  (MaKH)
)
;





-- Table: Loaisanpham
CREATE TABLE Loaisanpham (
    MaloaiSP int  NOT NULL,
    TenSP varchar(255)  NOT NULL,
    CONSTRAINT Loaisanpham_pk PRIMARY KEY  (MaloaiSP)
)
;





-- Table: Sanpham
CREATE TABLE Sanpham (
    MaSP int  NOT NULL,
    MaloaiSP int  NOT NULL,
    TenSP varchar(255)  NOT NULL,
    Giatien decimal(12,2)  NOT NULL,
    Mota varchar(1000)  NULL,
    CONSTRAINT Sanpham_pk PRIMARY KEY  (MaSP)
)
;









-- foreign keys
-- Reference:  client_purchase (table: Hoadon)

ALTER TABLE Hoadon ADD CONSTRAINT client_purchase 
    FOREIGN KEY (MaKH)
    REFERENCES Khachhang (MaKH)
;

-- Reference:  product_category_product (table: Sanpham)

ALTER TABLE Sanpham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (MaloaiSP)
    REFERENCES Loaisanpham (MaloaiSP)
;

-- Reference:  product_purchase_item (table: ChitietHD)

ALTER TABLE ChitietHD ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (MaSP)
    REFERENCES Sanpham (MaSP)
;

-- Reference:  purchase_purchase_item (table: ChitietHD)

ALTER TABLE ChitietHD ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (MaHD)
    REFERENCES Hoadon (MaHD)
;





-- End of file.

----nhapdulieu

insert dbo.Khachhang values ('01',N'NGUYEN VAN AN',NULL,NULL,NULL)

insert dbo.Khachhang values ('02',N'HOANG KIM QUYET',NULL,NULL,NULL)

insert dbo.Khachhang values ('03',N'NGUYEN VU CHIEU',NULL,NULL,NULL)

insert dbo.Khachhang values ('04',N'NGUYEN MAU THAI',NULL,NULL,NULL)

insert dbo.Khachhang values ('05',N'NGUYEN THI LAN',NULL,NULL,NULL)

INSERT dbo.Hoadon VALUES ('001','5000','01')

INSERT dbo.Hoadon VALUES ('002','10000','02')

INSERT dbo.Hoadon VALUES ('003','15000','03')

INSERT dbo.Hoadon VALUES ('004','8000','04')

INSERT dbo.Hoadon VALUES ('005','9000','05')

INSERT dbo.Loaisanpham VALUES ('1',N'DIEN THOAI')

INSERT dbo.Loaisanpham VALUES ('2',N'LAPTOP')

INSERT dbo.Loaisanpham VALUES ('3',N'TIVI')

INSERT dbo.Loaisanpham VALUES ('4',N'TU LANH')

INSERT dbo.Loaisanpham VALUES ('5',N'DIEU HOA')

INSERT dbo.Sanpham VALUES ('10','1',N'DIEN THOAI','5000',N' TOT')

INSERT dbo.Sanpham VALUES ('20','2',N'LAPTOP','10000',N' TOT')

INSERT dbo.Sanpham VALUES ('30','3',N'TI VI','15000',N' TOT')

INSERT dbo.Sanpham VALUES ('40','4',N'TU LANH','8000',N' TOT')

INSERT dbo.Sanpham VALUES ('50','5',N'DIEU HOA','9000',N' TOT')

INSERT dbo.ChitietHD VALUES ('00001','001','10','1')

INSERT dbo.ChitietHD VALUES ('00002','002','20','1')

INSERT dbo.ChitietHD VALUES ('00003','003','30','1')

INSERT dbo.ChitietHD VALUES ('00004','004','40','1')

INSERT dbo.ChitietHD VALUES ('00005','005','50','1')
