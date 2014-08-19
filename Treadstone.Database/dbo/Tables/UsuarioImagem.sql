CREATE TABLE [dbo].[UsuarioImagem]
(
	[Usuario] INT NOT NULL,
	[Imagem] INT NOT NULL,
	[Visibilidade] CHAR(2) NOT NULL DEFAULT 'PU',
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')) 
    CONSTRAINT [PK_UsuarioImagem]
		PRIMARY KEY ([Usuario], [Imagem]), 
    CONSTRAINT [CK_UsuarioImagem_Visibilidade] 
		CHECK ([Visibilidade] IN ('PU', 'PR'))
);

