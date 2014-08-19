CREATE TABLE [dbo].[Usuario]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Nome] VARCHAR(255) NOT NULL,
	[Email] VARCHAR(255) NOT NULL,
	[FotoPerfil] INT NOT NULL, 
    CONSTRAINT [CK_Usuario_FotoPerfil] 
		CHECK ([FotoPerfil] IN ( GetImagemIdByUsuarioId([Id]) )) 
)

GO

CREATE INDEX [IX_Usuario_Email] ON [dbo].[Usuario] ([Email])
