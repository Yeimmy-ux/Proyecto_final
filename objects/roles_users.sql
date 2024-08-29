USE db_dietetica;

-- CREACIÓN DE ROLES
CREATE ROLE role_admin;
CREATE ROLE role_finanzas;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL admin
GRANT SELECT ON cliente TO role_admin;
GRANT SELECT ON categoria_producto TO role_admin;
GRANT SELECT ON pedido TO role_admin;
GRANT SELECT ON producto TO role_admin;
GRANT SELECT ON metodo_de_pago TO role_admin;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL finanzas
GRANT ALL PRIVILEGES ON factura TO role_finanzas;
GRANT ALL PRIVILEGES ON metodo_de_pago TO role_finanzas;
GRANT ALL PRIVILEGES ON pedido TO role_finanzas;




-- CREACIÓN DE USUARIOS Y ASIGNACIÓN A ROLES
CREATE USER 'admin'@'%' IDENTIFIED BY '1224';
GRANT role_admin TO 'admin'@'%';

CREATE USER 'usuario_fin'@'%' IDENTIFIED BY '12ab';
GRANT role_finanzas TO 'usuario_fin'@'%';

FLUSH PRIVILEGES; 
