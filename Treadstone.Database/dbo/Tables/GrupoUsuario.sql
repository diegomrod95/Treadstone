CREATE TABLE [dbo].[GrupoUsuario]
(
	[GrupoId] INT NOT NULL,
	[UsuarioId] INT NOT NULL,
	[Admin] CHAR(1) NOT NULL DEFAULT 'N',
	[Cadastro] DATETIME NOT NULL DEFAULT GETDATE(),
	[Ativo] CHAR(1) NOT NULL DEFAULT 'S' CHECK ([Ativo] IN ('S', 'N')),
	PRIMARY KEY([GrupoId], [UsuarioId]), 
    CONSTRAINT [CK_GrupoUsuario_Admin] 
		CHECK ([Admin] IN ('S', 'N')),
)
