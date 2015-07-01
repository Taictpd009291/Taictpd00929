-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:16:32.912




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    Ma_NV int  NOT NULL,
    Ten_NV nvarchar(50)  NOT NULL,
    Ngay_Sinh datetime  NOT NULL,
    Gioi_Tinh nvarchar(20)  NOT NULL,
    Email nvarchar(100)  NOT NULL,
    Muc_Luong money  NOT NULL,
    Ma_Phong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (Ma_NV)
)
;





-- Table: TPhongBan
CREATE TABLE TPhongBan (
    Ma_Phong int  NOT NULL,
    Ten_Phong nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (Ma_Phong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongBan (table: TNhanvien)


ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongBan 
    FOREIGN KEY (Ma_Phong)
    REFERENCES TPhongBan (Ma_Phong)
;





-- End of file.

