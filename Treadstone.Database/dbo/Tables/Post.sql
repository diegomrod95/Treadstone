CREATE TABLE [dbo].[Post]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[UsuarioId] INT NOT NULL,
	[Tipo] INT NOT NULL DEFAULT 1,
	[Visibilidade] CHAR(2) NOT NULL DEFAULT 'AM',
	[Conteudo] VARCHAR(MAX) NOT NULL,
	[Local] GEOGRAPHY NULL,
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')), 
    CONSTRAINT [CK_Post_Visibilidade] 
		CHECK ([Visibilidade] IN ('AM', 'PU')), 
    CONSTRAINT [FK_Post_Usuario] 
		FOREIGN KEY ([UsuarioId]) REFERENCES [Usuario]([Id])
)

GO

CREATE INDEX [IX_Post_Tipo] ON [dbo].[Post] ([Tipo])

GO

CREATE INDEX [IX_Post_UsuarioId] ON [dbo].[Post] ([UsuarioId])
