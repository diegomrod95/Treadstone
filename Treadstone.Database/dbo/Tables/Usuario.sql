CREATE TABLE [dbo].[Usuario]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Nome] VARCHAR(255) NOT NULL,
	[Codigo] VARCHAR(255) NOT NULL,
	[Genero] CHAR(1) NULL,
	[Idioma] VARCHAR(255) NULL,
	[Religiao] VARCHAR(255) NULL,
	[Email] VARCHAR(255) NOT NULL,
	[Endereco] VARCHAR(1000) NULL,
	[Telefone] VARCHAR(25) NULL,
	[Celular] VARCHAR(25) NULL,
	[Site] VARCHAR(120) NULL,
	[FotoPerfil] INT NOT NULL,
	[DataNascimento] DATETIME NOT NULL,
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N'))
)

GO

CREATE INDEX [IX_Usuario_Email] ON [dbo].[Usuario] ([Email])


GO

CREATE INDEX [IX_Usuario_Nome] ON [dbo].[Usuario] ([Nome])


GO

CREATE INDEX [IX_Usuario_Codigo] ON [dbo].[Usuario] ([Codigo])
