/*
Created		09/05/2024
Modified		09/05/2024
Project		
Model		
Company		
Author		
Version		
Database		MS SQL 7 
*/


Create table [Lop] (
	[MaLop] Char(10) NOT NULL,
	[TenLop] Char(20) NULL,
	[MaGiaoVien] Char(10) NOT NULL,
Primary Key  ([MaLop],[MaGiaoVien])
) 
go

Create table [GiaoVien] (
	[MaGiaoVien] Char(10) NOT NULL,
	[TenGiaoVien] Char(10) NULL,
Primary Key  ([MaGiaoVien])
) 
go

Create table [SinhVien] (
	[MaSinhVien] Char(10) NOT NULL,
	[TenSinhVien] Char(50) NULL,
Primary Key  ([MaSinhVien])
) 
go

Create table [SinhVien_Lop] (
	[MaSinhVien] Char(10) NOT NULL,
	[MaLop] Char(10) NOT NULL,
	[MaGiaoVien] Char(10) NOT NULL,
Primary Key  ([MaSinhVien],[MaLop],[MaGiaoVien])
) 
go

Create table [Giao_vien_SinhVien] (
	[MaGiaoVien] Char(10) NOT NULL,
	[MaSinhVien] Char(10) NOT NULL,
Primary Key  ([MaGiaoVien],[MaSinhVien])
) 
go


Alter table [SinhVien_Lop] add  foreign key([MaLop],[MaGiaoVien]) references [Lop] ([MaLop],[MaGiaoVien]) 
go
Alter table [Lop] add  foreign key([MaGiaoVien]) references [GiaoVien] ([MaGiaoVien]) 
go
Alter table [Giao_vien_SinhVien] add  foreign key([MaGiaoVien]) references [GiaoVien] ([MaGiaoVien]) 
go
Alter table [SinhVien_Lop] add  foreign key([MaSinhVien]) references [SinhVien] ([MaSinhVien]) 
go
Alter table [Giao_vien_SinhVien] add  foreign key([MaSinhVien]) references [SinhVien] ([MaSinhVien]) 
go


Set quoted_identifier on
go

Set quoted_identifier off
go


