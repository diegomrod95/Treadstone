CREATE FUNCTION [GetImagemIdByUsuarioId]
(
	@id int
)
RETURNS TABLE
AS
RETURN SELECT [Imagem] FROM [UsuarioImagem] WHERE [Usuario] = @id
