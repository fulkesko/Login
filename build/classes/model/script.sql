CREATE DATABASE sesiones;
USE sesiones;

CREATE TABLE usuario(
	id int AUTO_INCREMENT,
    nombre VARCHAR(20),
    pass VARCHAR(20),
    PRIMARY KEY (id)
);
INSERT INTO usuario values (NULL,'fulvio','12345');
SELECT * from usuario;

-- DROP PROCEDURE buscarUsuSegunId;
CREATE PROCEDURE buscar(_usu VARCHAR(50), _pass VARCHAR(50))
SELECT count(0) FROM usuario WHERE usuario.nombre = _nombre AND usuario.pass = _pass;

CALL buscarUsuSegunId('fulio','1245');
CALL buscarUsuSegunId('fulvio','12345');


    