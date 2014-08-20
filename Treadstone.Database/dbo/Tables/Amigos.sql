CREATE TABLE [dbo].[Amigos]
(
	[UsuarioId] INT NOT NULL,
	[AmigoId] INT NOT NULL,
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')),
	PRIMARY KEY ([UsuarioId], [AmigoId]), 
    CONSTRAINT [FK_Amigos_Usuario] 
		FOREIGN KEY ([UsuarioId]) REFERENCES [Usuario]([Id]),
	CONSTRAINT [FK_Amigos_Amigo_Usuario] 
		FOREIGN KEY ([AmigoId]) REFERENCES [Usuario]([Id]), 
)
