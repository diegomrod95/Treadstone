CREATE TABLE [dbo].[Grupo]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Nome] VARCHAR(255) NOT NULL,
	[Descricao] VARCHAR(1000) NULL,
	[ImagemId] INT NULL,
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')), 
    CONSTRAINT [FK_Grupo_Imagem] 
		FOREIGN KEY ([ImagemId]) REFERENCES [Imagem]([Id])	 
)

GO

CREATE INDEX [IX_Grupo_Nome] ON [dbo].[Grupo] ([Nome])
