USE Chinook;

-- ? Crear un Stored Procedure para Obtener Todas las playlists:
-- ? Crea un stored procedure que de SELECT a todas las playlist de la tabla Playlist.

CREATE PROCEDURE SelectAllPlaylists
AS
SELECT * FROM Playlist
GO;

SelectAllPlaylists