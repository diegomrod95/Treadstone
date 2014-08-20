CREATE TABLE [dbo].[Imagem]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Descricao] VARCHAR(1000) NULL,
	[Fisico] CHAR(1) NOT NULL,
	[File] VARBINARY(MAX) NULL,
	[Caminho] VARCHAR(MAX) NULL,
	[Extensao] VARCHAR(10) NULL,
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')),
	CONSTRAINT [CK_Imagem_Fisico] 
		CHECK ([Fisico] IN ('S', 'N')) 
);

GO

CREATE INDEX [IX_Imagem_Descricao] ON [dbo].[Imagem] ([Descricao]);
