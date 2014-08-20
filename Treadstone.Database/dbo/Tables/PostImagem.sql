CREATE TABLE [dbo].[PostImagem]
(
	[PostId] INT NOT NULL,
	[ImagemId] INT NOT NULL,
	[Descricao] VARCHAR(500) NULL,
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')), 
	PRIMARY KEY ([PostId], [ImagemId]),
    CONSTRAINT [FK_PostImagem_Post] 
		FOREIGN KEY ([PostId]) REFERENCES [Post]([Id]), 
    CONSTRAINT [FK_PostImagem_Imagem] 
		FOREIGN KEY ([ImagemId]) REFERENCES [Imagem]([Id])
)
