CREATE DATABASE [QLCHLK]
 use QLCHLK;
GO
ALTER DATABASE [QLCHLK] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCHLK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCHLK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCHLK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCHLK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCHLK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCHLK] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCHLK] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLCHLK] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLCHLK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCHLK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCHLK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCHLK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCHLK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCHLK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCHLK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCHLK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCHLK] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLCHLK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCHLK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCHLK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCHLK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCHLK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCHLK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCHLK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCHLK] SET RECOVERY FULL 
GO
ALTER DATABASE [QLCHLK] SET  MULTI_USER 
GO
ALTER DATABASE [QLCHLK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCHLK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCHLK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCHLK] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLCHLK', N'ON'
GO
USE [QLCHLK]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 4/24/2019 4:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ChiTiet]    Script Date: 4/24/2019 4:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTiet](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tbl_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 4/24/2019 4:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHoaDon] [int] NOT NULL,
	[NgayHoaDon] [date] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 4/24/2019 4:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 4/24/2019 4:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[MaSanPham] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[DonGia] [numeric](18, 0) NULL,
	[HinhAnh] [nvarchar](100) NULL,
	[MoTa] [nvarchar](100) NULL,
	[SoLuongTon] [int] NULL,
	[ML] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

create table taikhoan
(
    id int identity(1,1) primary key,
    username varchar(50),
    pass varchar(1000),
	hoten nvarchar(50),
	sdt varchar(11),
	email varchar(50),
)
insert into Loai values(N'1',N'Laptop'),
					   (N'2',N'Màn hình'),
					   (N'3',N'VAG'),
					   (N'4',N'Ram'),
					   (N'5',N'SSD'),
					   (N'6',N'HHD'),
					   (N'7',N'CPU'),
					   (N'8',N'Mainboard')
					   select * from Loai

insert into tbl_SanPham values ('1',N'Dell Inspiron 5570-N5570E','23290000',N'10.PNG',N'Mỏng nhẹ','10','1'),
							   ('2',N'Acer Aspire 3 A315-32-C9A4','6290000',N'1.PNG',N'Vừa túi tiền','10','1'),
							   ('3',N'ASUS Transformer Book T101HA-GR004R','5975500',N'2.PNG',N'Nhỏ gọn','10','1'),
							   ('4',N'ASUS VivoBook X407MA-BV043T','6190000',N'3.PNG',N'Nhỏ gọn','10','1'),
							   ('5',N'Lenovo Ideapad 130-15AST','6450000',N'4.PNG',N'Nhẹ','10','1'),
							   ('6',N'HP Notebook 14-cK0066TU','6999000',N'5.PNG',N'Nặng','10','1'),
							   ('7',N'ASUS VivoBook X407MA-BV039T','7020500',N'6.PNG',N'Hợp thời trang','10','1'),
							   ('8',N'HP Pavilion Gaming 15-cx0177TX','21790000',N'7.PNG',N'Chiến game tốt','20','1'),
							   ('9',N'ASUS ROG Zephyrus S GX531GV-ES010T','52990000',N'8.PNG',N'Led RGB','50','1'),
							   ('10',N'MSI Prestige PS42 Modern 8RB-234VN','23990000',N'9.PNG',N'Hợp thời trang','12','1'),
							   ('11',N'Màn Hình ASUS 23.6" VZ249H','3890000',N'mh1.PNG',N'1920x1080','5','2'),
							   ('12',N'Màn Hình cong ASUS 34" PG348Q','28990000',N'mh2.PNG',N'3440x1440','7','2'),
							   ('13',N'Màn Hình cong Samsung 27"','4740500',N'mh3.PNG',N'1920x1080','5','2'),
							   ('14',N'Màn hình LCD Acer 27 inch ED273URP','10890000',N'mh4.PNG',N'2k','6','2'),
							   ('15',N'Màn hình LCD Viewsonic 32" ','8590000',N'mh5.PNG',N'2560x1440','8','2'),
							   ('16',N'Màn Hình ASUS 31.5" VA326H','8990000',N'mh6.PNG',N'FULL HD','5','2'),
							   ('17',N'Màn Hình Acer 37.5" XR382CQK','31000000',N'mh7.PNG',N'3840x1600','6','2'),
							   ('18',N'Màn Hình Acer 24.5" KG251QD','10000000',N'mh8.PNG',N'1920x1080','4','2'),
							   ('19',N'Màn Hình chơi game Acer 27" Predator X27','70000000',N'mh9.PNG',N'Full HD','10','2'),
							   ('20',N'Card màn hình ASUS GeForce RTX 2080Ti 11GB GDDR6 ROG MATRIX Infinity Loop','55240000',N'v1.PNG',N'Đồ họa đẹp mắt','100','3'),
							   ('21',N'Card màn hình GALAX GeForce RTX 2080Ti 11GB GDDR6 HOF ','46900000',N'v2.PNG',N'Đồ họa đẹp mắt','60','3'),
							   ('22',N'Card màn hình MSI GeForce RTX 2080Ti 11GB GDDR6 Sea Hawk EK X','40900000',N'v3.PNG',N'Đồ họa đẹp mắt','50','3'),
							   ('23',N'Card màn hình GIGABYTE GeForce GTX 1080Ti 11GB GDDR5X Gaming','19900000',N'v4.PNG',N'Đồ họa đẹp mắt','20','3'),
							   ('24',N'Card màn hình MSI GeForce GTX 1080Ti 11GB GDDR5X Gaming X Trio ','23490000',N'v5.PNG',N'Đồ họa đẹp mắt','20','3'),
							   ('25',N'Card màn hình MSI GeForce RTX 2080 8GB GDDR6 Gaming X TRIO','25300000',N'v6.PNG',N'Đồ họa đẹp mắt','50','3'),
							   ('26',N'Card màn hình GIGABYTE GeForce RTX 2080 8GB GDDR6 AORUS','22890000',N'v7.PNG',N'Đồ họa đẹp mắt','40','3'),
							   ('27',N'Card màn hình GIGABYTE GeForce GT 1030 2GB GDDR4 Low profile','2145000',N'v8.PNG',N'Đồ họa đẹp mắt','1','3'),
							   ('28',N'Card màn hình GIGABYTE Radeon RX 550 2GB GDDR5','2280000',N'v9.PNG',N'Đồ họa đẹp mắt','3','3'),
							   ('29',N'Ram Adata XPG SPECTRIX D80 32GB','6100000',N'r1.PNG',N'Tản nhiệt lỏng','100','4'),
							   ('30',N'Ram GSkill TridentZ 16GB','4779000',N'r2.PNG',N'BUS 3000','3','4'),
							   ('31',N'RAM ADATA 2x8GB DDR4 3200MHz - AX4U320038G16-DRS','4999000',N'r3.PNG',N'Led Đẹp mắt','3','4'),
							   ('32',N'Ổ cứng SSD Western Digital Green 120GB M.2 2280 SATA 3 - WDS120G2G0B','679000',N's1.PNG',N'','10','5'),
							   ('33',N'Ổ cứng SSD Western Digital Black SN750 250GB M.2 NVMe - WDS250G3X0C','1729000',N's2.PNG',N'','5','5'),
							   ('34',N'Ổ cứng SSD Western Digital Black SN750 500GB','3049500',N's3.PNG',N'','10','5'),
							   ('35',N'ổ cứng SSD Kingston 240GB 2.5" Sata3','1500000',N's4.PNG',N'','2','5'),
							   ('36',N'Ổ cứng SSD Crucial P1 1TB M.2 2280 NVMe - CT1000P1SSD8','3500000',N's5.PNG',N'','4','5'),
							   ('37',N'Ổ cứng HDD Western Digital Blue 1TB 3.5" SATA 3 - WD10EZEX','1000000',N'h1.PNG',N'','5','6'),
							   ('38',N'Ổ cứng HDD Western Digital Blue 1TB 3.5" SATA 3 - WD10EZRZ','1100000',N'h2.PNG',N'','5','6'),
							   ('39',N'Ổ cứng HDD Western Digital Black 1TB 3.5" SATA 3 - WD1003FZEX','1900000',N'h3.PNG',N'','4','6'),
							   ('40',N'ổ cứng HDD WD 4TB WD4002FYYZ','6900000',N'h4.PNG',N'','8','6'),
							   ('41',N'Ổ cứng di động HDD Seagate Expansion Portable 3TB USB 3.0 - STEA3000400','3100000',N'h5.PNG',N'Đen xám','9','6'),
							   ('42',N'ổ cứng HDD Transcend 2TB Slim StoreJet 2.5" M3S','2230000',N'h6.PNG',N'Đen','1','6'),
							   ('43',N'CPU Intel Core i9-7900X','26000115',N'c1.PNG',N'3.3GHz - 4.3GHz','8','7'),
							   ('44',N'CPU Intel Core I7-7820X','15690000',N'c2.PNG',N'3.6GHz - 4.3GHz','5','7'),
							   ('45',N'CPU Intel Core i9-9900K','11000000',N'c3.PNG',N'3.6GHz - 5.0GHz','4','7'),
							   ('46',N'CPU Intel Core i7-7800X','10800000',N'c4.PNG',N'3.5GHz - 4.0GHz','6','7'),
							   ('47',N'CPU Intel Core i7-9700K','9690000',N'c5.PNG',N'3.6GHz - 4.9GHz','4','7'),
							   ('48',N'CPU Intel Core I7-8700K','9800000',N'c6.PNG',N'3.7GHz','6','7'),
							   ('49',N'CPU Intel Core I7-7740X','9630000',N'c7.PNG',N'4.3GHz - 4.5GHz','4','7'),
							   ('50',N'CPU Intel Core I7-7700K','9300000',N'c8.PNG',N'4.2GHz','5','7'),
							   ('51',N'CPU AMD Ryzen Threadripper 2990WX','49000000',N'c9.PNG',N'3.0GHz - 4.2GHz','1','7'),
							   ('52',N'Mainboard ASUS ROG STRIX B360-G GAMING','2300450',N'man1.PNG',N'Led đẹp mắt','2','8'),
							   ('53',N'Mainboard ASUS ROG Maximus XI Formula','11190000',N'man2.PNG',N'Led đẹp mắt','5','8'),
							   ('54',N'Mainboard ASUS PRIME B450-PLUS','2555500',N'man3.PNG',N'Led Đẹp mắt','6','8'),
							   ('55',N'Mainboard ASUS ROG Strix Z390-F Gaming','5300000',N'man4.PNG',N'Led đẹp mắt','4','8'),
							   ('56',N'Mainboard ASRock H310CM-DVS','1300000',N'man5.PNG',N'Ổn định','5','8'),
							   ('57',N'Mainboard GIGABYTE B360 M AORUS PRO','2130000',N'man6.PNG',N'Ổn định','8','8'),
							   ('58',N'Mainboard ASUS ROG Dominus Extreme','40000000',N'man7.PNG',N'Gắn được nhiều VAG','1','8'),
							   ('59',N'Mainboard ASUS ROG RAMPAGE VI EXTREME OMEGA','35000000',N'man8.PNG',N'Hiệu năng cao','10','8')
							   select * from tbl_SanPham

INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (1, N'Hoa', N'43 Nguyễn Hữu Tiên', N'0979797979')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (2, N'Van', N'117 Le Trọng Tấn', N'34579586')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (3, N'Ngân', N'389 Đường 26/3', N'8769230202')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (4, N'Trang', N'46 Vân Kiều', N'7669327206')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (5, N'Khánh', N'37 Trương Vĩnh Ký', N'7297538673')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (6, N'Hồng', N'89 Dương Văn Dương', N'862972290')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (7, N'Hương', N'36 Lê Trọng Tân', N'707394389')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (8, N'Dung', N'65 NGuyễn Hữu Tiến', N'720239630')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (9, N'Trân', N'487 Cầu Xéo', N'475298620')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (10, N'Lâm', N'48 Hoàng Diệu', N'435928020')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (11, N'An', N'826 NGuyễn Văn Quá', N'459320349')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (12, N'An', N'56 Hoa Sữa', N'932976932')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (13, N'Khoa', N'92 Tân Quý', N'225290595')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (14, N'Yến', N'122 Bình Long', N'442396202')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (15, N'Thi', N'1207 Tân Kỳ Tân Quý', N'980737205')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (16, N'Bình', N'78 Trần Quý Cáp', N'769348223')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (17, N'Chi', N'675 Hoa Cương', N'683260385')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (18, N'Loan', N'38 Lê Văn Lương', N'938573820')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (19, N'Lan', N'932 Lê Trọng Tấn', N'768437293')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (20, N'Gấm', N'38 Âu CƠ', N'979372763')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (21, N'Em', N'3895 Tân Sơn Nhì', N'768792373')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (22, N'Ghềnh', N'92 Sơn Kỳ', N'763023307')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (23, N'Kim', N'446 Trần Đình Trọng', N'739847022')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (24, N'Lam', N'10 Bàu Cát', N'876036287')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (25, N'My', N'6 Lương Minh Nguyệt', N'768574033')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (26, N'Hải', N'56 Sơn Kỳ', N'472962020')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (27, N'Hà', N'75 Bình Long', N'086843479')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (28, N'Thương', N'68 Đường số 14', N'685368098')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (29, N'Mến', N'69 Lê Lợi', N'764737347')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (30, N'Long', N'691 Trương Vĩnh Ký', N'330973023')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (31, N'Trang', N'90 Lê Lợi', N'874782903')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (32, N'Khoa', N'123 Nguyễn Văn Quá', N'439538393')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (33, N'Việt', N'57 Lê trọng tấn', N'469320258')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (34, N'Thu', N'1234 Trường Chinh', N'284720201')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (35, N'Hoàng', N'48 Phan Huy Ích', N'572906252')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (36, N'Trinh', N'59 Tân Quý', N'202927623')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKH], [DiaChi], [SoDienThoai]) VALUES (37, N'Thu', N'145 Tân Kỳ Tân Quý', N'958207602')

set dateformat dmy
insert into tbl_HoaDon values('1','2/2/2018','1'),
							 ('2','2/5/2018','23'),
							 ('3','2/8/2018','3'),
							 ('4','4/5/2018','4'),
							 ('5','6/6/2018','5'),
							 ('6','7/7/2019','10'),
							 ('7','8/8/2019','11'),
							 ('8','8/9/2019','12'),
							 ('9','2/3/2019','35'),
							 ('10','2/3/2018','37')

insert into tbl_ChiTiet values('1','1','3'),
							  ('2','5','4'),
							  ('3','2','4'),
							  ('4','6','5'),
							  ('5','2','1'),
							  ('6','32','1'),
							  ('7','50','1'),
							  ('8','45','1'),
							  ('9','40','1'),
							  ('10','11','1'),
							  ('10','19','1')

ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_HoaDon1] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tbl_HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_HoaDon1]
GO
ALTER TABLE [dbo].[tbl_ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbl_ChiTiet] CHECK CONSTRAINT [FK_tbl_ChiTiet_tbl_SanPham]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SanPham_Loai] FOREIGN KEY([ML])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_tbl_SanPham_Loai]
GO
USE [master]
GO
ALTER DATABASE [BTVeNha] SET  READ_WRITE 
GO