CREATE TABLE [dbo].[UsuarioImagem]
(
	[UsuarioId] INT NOT NULL,
	[ImagemId] INT NOT NULL,
	[Visibilidade] CHAR(2) NOT NULL DEFAULT 'PU',
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')) 
    CONSTRAINT [PK_UsuarioImagem]
		PRIMARY KEY ([UsuarioId], [ImagemId]), 
    CONSTRAINT [CK_UsuarioImagem_Visibilidade] 
		CHECK ([Visibilidade] IN ('PU', 'PR')), 
    CONSTRAINT [FK_UsuarioImagem_Usuario] 
		FOREIGN KEY ([UsuarioId]) REFERENCES [Usuario]([Id]), 
    CONSTRAINT [FK_UsuarioImagem_Imagem] 
		FOREIGN KEY ([ImagemId]) REFERENCES [Imagem]([Id])
);

