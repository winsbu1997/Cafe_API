CREATE DATABASE QuanCafe
go
use QuanCafe
go
create table HANGSX
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	TEN nvarchar(50)
)
go 
CREATE TABLE NHACUNGCAP
(
	ID INT IDENTITY(1,1) PRIMARY KEY ,
	TEN NVARCHAR(50),
	DIACHI NVARCHAR(100),
	SDT VARCHAR(15)
)
GO
CREATE TABLE LOAISP
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TEN NVARCHAR(50),
	ANH NVARCHAR(200),
	MOTA NTEXT,
	HANGSX_ID INT REFERENCES HANGSX(ID)
)
GO
CREATE TABLE SANPHAM
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KHOILUONG INT,
	ANH NVARCHAR(200),
	MOTA NTEXT,
	SOLUONG INT,
	LOAISP_ID INT REFERENCES LOAISP(ID)
)
GO
CREATE TABLE PRICE
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	GIABAN INT,
	BATDAU DATE,
	KETTHUC DATE,
	SANPHAM_ID INT REFERENCES SANPHAM(ID)
)
GO
CREATE TABLE BAIBAO
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TIEUDE NVARCHAR(200),
	NOIDUNG NVARCHAR(MAX),
	SANPHAM_ID INT REFERENCES SANPHAM(ID)
)
GO
CREATE TABLE NGUOIDUNG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TEN NVARCHAR(50),
	TENDANGNHAP VARCHAR(30),
	MATKHAU NVARCHAR(50),
	SDT VARCHAR(15),
	DIACHI NVARCHAR(100),
	EMAIL NVARCHAR(50)
)
GO
CREATE TABLE BINHLUAN
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NOIDUNG NVARCHAR(MAX),
	SOSAO INT,
	SANPHAM_ID INT REFERENCES SANPHAM(ID),
	KHACHHANG_ID INT REFERENCES NGUOIDUNG(ID)
)
GO
CREATE TABLE TRANGTHAIDH
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TEN NVARCHAR(30)
)
GO
CREATE TABLE DONHANG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NGAYDAT DATE,
	TENNGUOINHAN NVARCHAR(50),
	SDT VARCHAR(15),
	DIACHI NVARCHAR(100),
	TONGTIEN INT,
	TRANGTHAI_ID INT REFERENCES TRANGTHAIDH(ID),
	KHACHHANG_ID INT REFERENCES NGUOIDUNG(ID)
)
GO
CREATE TABLE CHITIETDONHANG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	SANPHAM_ID INT REFERENCES SANPHAM(ID),
	DONHANG_ID INT REFERENCES DONHANG(ID),
	SOLUONG INT,
	DONGIA INT
)
GO
CREATE TABLE NHAPHANG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NGAYNHAP DATE,
	NHACC_ID INT REFERENCES NHACUNGCAP(ID),
	--SANPHAM_ID INT REFERENCES SANPHAM(ID)
)
GO
CREATE TABLE CHITIETNHAPHANG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	SANPHAM_ID INT REFERENCES SANPHAM(ID),
	NHAPHANG_ID INT REFERENCES NHAPHANG(ID),
	SOLUONGNHAP INT,
	GIANHAP INT,
	SOLUONGCONLAI INT
)
GO
CREATE TABLE XUATHANG
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	CHITIETDH_ID INT REFERENCES CHITIETDONHANG(ID),
	NHAPHANG_ID INT REFERENCES NHAPHANG(ID),
	SOLUONGXUAT INT,
	GIANHAP INT,
	GIABAN INT
)
GO
CREATE TABLE DOANHTHU
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NGAY DATE,
	SANPHAM_ID INT REFERENCES SANPHAM(ID),
	SOLUONGBAN INT,
	DOANHTHU INT,
	LOINHUAN INT
)
