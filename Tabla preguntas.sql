CREATE TABLE [dbo].[Preguntas] (
	[IdPreg]	INT IDENTITY(1,1),,
    [Tema]      NVARCHAR (20) NOT NULL,
    [Pregunta]     NVARCHAR (150) NULL,
    [Resp1]  NVARCHAR (150) NULL,
    [Resp2]   NVARCHAR (150) NULL,
    [Resp3]  NVARCHAR (150) NULL,
    [NumRespCorrecta]  INT NULL);
GO

INSERT INTO [Preguntas] ([Tema],[Pregunta],[Resp1],[Resp2],[Resp3],[NumRespCorrecta]) VALUES (N'ASP.NET',N'Que contiene el objeto page',N'Instancias de controles de la pagina',N'Estado de la pagina',N'Page no es un objeto',1);
GO

INSERT INTO [Preguntas] ([Tema],[Pregunta],[Resp1],[Resp2],[Resp3],[NumRespCorrecta]) VALUES (N'ASP.NET',N'Coleccion de datos para metodo POST',N'Request.QueryString (nombre)',N'Request.Form (nombre)',N'Request.Params(nombre)',2);
GO

INSERT INTO [Preguntas] ([Tema],[Pregunta],[Resp1],[Resp2],[Resp3],[NumRespCorrecta]) VALUES (N'Seguridad.NET',N'Fundamentos de la seguridad',N'Privacidad y discrecion',N'Autentificacion y autorizacion',N'Ambas son correctas',2);
GO

INSERT INTO [Preguntas] ([Tema],[Pregunta],[Resp1],[Resp2],[Resp3],[NumRespCorrecta]) VALUES (N'Seguridad.NET',N'Tipos de autentificacion de usuarios',N'Password',N'Identificador',N'Windows',3);
GO

