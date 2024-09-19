CREATE DATABASE ss02;
USE ss02;
CREATE TABLE PhieuXuat(
	soPx INT AUTO_INCREMENT PRIMARY KEY,
    ngayXuat DATETIME    
);
CREATE TABLE VatTu(
	maVT INT AUTO_INCREMENT PRIMARY KEY,
    tenVT VARCHAR(255)
);
CREATE TABLE PhieuXuatChiTiet(
	soPx INT,
    maVT INT,
    PRIMARY KEY (soPx,maVT),
    donGiaXuat DOUBLE CHECK (donGiaXuat>0),
    SoLuongXuat INT
);

ALTER TABLE PhieuXuatChiTiet ADD CONSTRAINT fk1 FOREIGN KEY(soPx)  REFERENCES PhieuXuat(soPx);
ALTER TABLE PhieuXuatChiTiet ADD CONSTRAINT fk2 FOREIGN KEY(maVT) REFERENCES VatTu(maVT);

CREATE TABLE NhaCungCap(
	maNCC int AUTO_INCREMENT PRIMARY KEY,
    tenNCC VARCHAR(255),
    diaChi VARCHAR(255),
    soDienThoai VARCHAR(11)
);


CREATE TABLE DondatHang(
	soDH INT AUTO_INCREMENT PRIMARY KEY,
    maNCC int,
    ngayDH DATETIME
);

ALTER TABLE  DondatHang ADD CONSTRAINT fk5 FOREIGN KEY (maNCC) REFERENCES NhaCungCap(maNCC);

CREATE TABLE ChiTietDonDatHang (
	maVT int,
    soDH int,
    PRIMARY KEY (maVT,soDH)
);

ALTER TABLE ChiTietDonDatHang ADD CONSTRAINT fk3 FOREIGN KEY(maVT) REFERENCES VatTu(maVT);
ALTER TABLE ChiTietDonDatHang ADD CONSTRAINT fk4 FOREIGN KEY(soDH) REFERENCES DondatHang(soDH);

CREATE TABLE PhieuNhap (
	soPn INT AUTO_INCREMENT PRIMARY KEY,
    ngayNhap DATETIME
);

CREATE TABLE PhieuNhapChiTiet(
	soPn INT,
    maVT INT,
    PRIMARY KEY (soPn,maVT),
    donGiaNhap DOUBLE,
    soLuongNhap INT
);
ALTER TABLE PhieuNhapChiTiet ADD CONSTRAINT fk6 FOREIGN KEY (soPn) REFERENCES PhieuNhap(soPn);
ALTER TABLE PhieuNhapChiTiet ADD CONSTRAINT fk7 FOREIGN KEY (maVT) REFERENCES VatTu(maVT);













