CREATE database ss03_03;
use ss03_03;

CREATE TABLE vatTu (
	maVT int primary key,
    tenVT VARCHAR(255)
);

CREATE table NhaCungCap(
	maNCC int primary key,
    tenNCC VARCHAR(255),
    diaChi VARCHAR(255),
    soDienThoai VARCHAR(11)
);

CREATE TABLE phieuXuat(
	soPX INT PRIMARY KEY,
    ngayXuat DATETIME
);

CREATE table PhieuXuatChiTieu(
	soPX INT,
    maVT INT,
    primary key (soPX,maTV),
    donGiaXuat DOUBLE,
    foreign key (soPX) references PhieuXuat(soPX),
    soLuongXuat INT,
    foreign key (maTV) references VatTu(maVT)
);

create table PhieuNhap (
	soPN int primary key,
    ngayNhap DATETIME
);

create table phieuNhapChiTiet (
	soPN INT,
    maVT INT,
    primary key (soPN, maVT),
    foreign key (soPN) references PhieuNhap(soPN),
    foreign key (maVT) references VatTu(maVT),
    donGiaNhap DOUBLE,
    soLuongNhap INT
);

create table DonDatHang(
	soDH int primary key,
    maNCC int,
    ngayDH datetime,
    foreign key (maNCC) references NhaCungCap(maNCC)
);

create table ChiTietDonDatHang (
    soDH INT,
    maVT INT,
	primary key (soDH, maVT),
    foreign key (soDh) references DonDatHang(soDH),
    foreign key (maVT) references VatTu(maVT)
);
-- them du lieu vao mang
-- -- Thêm dữ liệu cho bảng VatTu
insert into VatTu (maVT, tenVT)
VALUES
(1, 'Sắt'),
(2, 'Xi măng'), 
(3, 'Cát'), 
(4, 'Đá'), 
(5, 'Gạch');

insert into NhaCungCap (maNCC, tenNCC, diaChi, soDienThoai) 
values
(1, 'Công ty Xây dựng ABC', 'Hà Nội', '0912345678'),
(2, 'Công ty VLXD XYZ', 'Hồ Chí Minh', '0908765432'),
(3, 'Công ty VLXD 123', 'Đà Nẵng', '0987654321');

insert into PhieuXuat (soPX, ngayXuat)
values
(1, '2024-02-14'), 
(2, '2024-02-15'), 
(3, '2024-02-16'), 
(4, '2024-02-17'), 
(5, '2024-02-18');

insert into PhieuXuatChiTiet (soPX, maVT, donGiaXuat, soLuongXuat) 
values
(1, 1, 5000, 10), 
(2, 2, 7000, 15), 
(3, 3, 3000, 20), 
(4, 4, 6000, 5), 
(5, 5, 4000, 8);

insert into PhieuNhap (soPN, ngayNhap) 
values
(1, '2024-01-12'), 
(2, '2024-01-15'), 
(3, '2024-01-18'), 
(4, '2024-02-01'), 
(5, '2024-02-12');

insert into PhieuNhapChiTiet (soPN, maVT, donGiaNhap, soLuongNhap) 
values
(1, 1, 4000, 100), 
(1, 2, 5000, 120), 
(1, 3, 2000, 150),
(1, 4, 6000, 60), 
(1, 5, 3000, 80);

INSERT INTO DonDatHang (soDH, maNCC, ngayDH) 
VALUES (1, 1, '2024-02-12'), (2, 2, '2024-02-15'), (3, 3, '2024-02-17'), (4, 1, '2024-02-18'), (5, 2, '2024-02-19');

INSERT INTO ChiTietDonDatHang (soDH, maVT) 
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);


