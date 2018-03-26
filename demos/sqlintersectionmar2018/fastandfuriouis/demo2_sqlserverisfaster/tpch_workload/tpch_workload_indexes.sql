USE [tpch_workload]
GO
ALTER DATABASE [tpch_workload] SET RECOVERY BULK_LOGGED
go
ALTER TABLE customer ADD CONSTRAINT [PK_C_CUSTKEY] PRIMARY KEY CLUSTERED 
(
	[C_CUSTKEY] ASC
)
GO
CREATE CLUSTERED INDEX [L_SHIPDATE_CLUIDX] ON [dbo].[LINEITEM]
(
	[L_SHIPDATE] ASC
)
GO
ALTER TABLE NATION ADD CONSTRAINT [PK_N_NATIONKEY] PRIMARY KEY CLUSTERED 
(
	[N_NATIONKEY] ASC
)
GO
ALTER TABLE NEWPART ADD CONSTRAINT [PK_NEW_P_PARTKEY] PRIMARY KEY CLUSTERED 
(
	[P_PARTKEY] ASC
)
GO
ALTER TABLE ORDERS ADD CONSTRAINT [PK_O_ORDERKEY] PRIMARY KEY NONCLUSTERED 
(
	[O_ORDERKEY] ASC
)
GO
CREATE CLUSTERED INDEX [O_ORDERDATE_CLUIDX] ON ORDERS
(
	[O_ORDERDATE] ASC
)
GO
ALTER TABLE PART ADD CONSTRAINT [PK_P_PARTKEY] PRIMARY KEY CLUSTERED 
(
	[P_PARTKEY] ASC
)
GO
ALTER TABLE PARTSUPP ADD CONSTRAINT [PK_PS_PARTKEY_PS_SUPPKEY] PRIMARY KEY CLUSTERED 
(
	[PS_PARTKEY] ASC,
	[PS_SUPPKEY] ASC
)
GO
ALTER TABLE REGION ADD CONSTRAINT [PK_R_REGIONKEY] PRIMARY KEY CLUSTERED 
(
	[R_REGIONKEY] ASC
)
GO
ALTER TABLE SUPPLIER ADD CONSTRAINT [PK_S_SUPPKEY] PRIMARY KEY CLUSTERED 
(
	[S_SUPPKEY] ASC
)
GO
CREATE NONCLUSTERED INDEX [L_ORDERKEY_IDX] ON [dbo].[LINEITEM]
(
	[L_ORDERKEY] ASC
)
GO
CREATE NONCLUSTERED INDEX [L_PARTKEY_IDX] ON [dbo].[LINEITEM]
(
	[L_PARTKEY] ASC
)
GO
CREATE NONCLUSTERED INDEX [N_REGIONKEY_IDX] ON [dbo].[NATION]
(
	[N_REGIONKEY] ASC
)
GO

CREATE NONCLUSTERED INDEX [P_TYPE_IDX] ON [dbo].[NEWPART]
(
	[P_TYPE] ASC
)
GO
CREATE NONCLUSTERED INDEX [PS_SUPPKEY_IDX] ON [dbo].[PARTSUPP]
(
	[PS_SUPPKEY] ASC
)
GO
CREATE NONCLUSTERED INDEX [S_NATIONKEY_IDX] ON [dbo].[SUPPLIER]
(
	[S_NATIONKEY] ASC
)
GO
ALTER DATABASE [tpch_workload] SET RECOVERY FULL
go