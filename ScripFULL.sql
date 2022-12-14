create database [CRUDVENTA]

go 

USE [CRUDVENTA]
GO
/****** Object:  Table [dbo].[articulo]    Script Date: 11/12/2022 8:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulo](
	[idarticulo] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NULL,
	[nombre] [varchar](50) NULL,
	[tipo] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idarticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/12/2022 8:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NULL,
	[cedula] [varchar](14) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[ocupacion] [varchar](50) NULL,
	[sexo] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 11/12/2022 8:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[idempleado] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NULL,
	[cedula] [varchar](14) NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[cargo] [varchar](50) NULL,
	[tiposamgre] [char](3) NULL,
	[sexo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 11/12/2022 8:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[idfactura] [int] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NULL,
	[idarticulo] [int] NULL,
	[total] [money] NULL,
	[descripcion] [varchar](100) NULL,
	[subtotal] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idfactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 11/12/2022 8:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[idpedidos] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NULL,
	[idcliente] [int] NULL,
	[idarticulo] [int] NULL,
	[idempleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idpedidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 11/12/2022 8:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[iduser] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](15) NULL,
	[contraseña] [varchar](50) NULL,
 CONSTRAINT [PK__usuario__2A50F1CEF90830B6] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleado] ON 

INSERT [dbo].[empleado] ([idempleado], [iduser], [cedula], [nombre], [apellido], [cargo], [tiposamgre], [sexo]) VALUES (1, 1, N'402-3594038-0', N'Brailin', N'Reyes', N'Developer', N'O+ ', N'Masculino')
INSERT [dbo].[empleado] ([idempleado], [iduser], [cedula], [nombre], [apellido], [cargo], [tiposamgre], [sexo]) VALUES (2, 4, N'402-3565256-8', N'Jonathan', N'Feliciano', N'Analista', N'A- ', N'Masculino')
INSERT [dbo].[empleado] ([idempleado], [iduser], [cedula], [nombre], [apellido], [cargo], [tiposamgre], [sexo]) VALUES (3, NULL, N'402-3544587-4', N'Miguelina', N'Perez', N'Contable', NULL, N'Masculino')
INSERT [dbo].[empleado] ([idempleado], [iduser], [cedula], [nombre], [apellido], [cargo], [tiposamgre], [sexo]) VALUES (4, NULL, N'402-5465256-4', N'Juan', N'Gomez', N'Gerente', NULL, N'Masculino')
SET IDENTITY_INSERT [dbo].[empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([iduser], [usuario], [contraseña]) VALUES (1, N'brailinr', N'123456789')
INSERT [dbo].[usuario] ([iduser], [usuario], [contraseña]) VALUES (4, N'manuelr', N'12345')
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
