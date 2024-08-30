<center>
<img src="" style="width: 100% ; aspect-ratio:16/9">
</center>


# <center>CREACION BASE DE UN SISTEMA PARA GESTIONAR UNA DIETETICA</center>

@Alumno: Yeimmy Labrador

@Comision: #57190

@Tutor: Ariel Annone

@Docente: Anderson M. Torres

---

## Tematica del proyecto

### PROBLEMA:
Actualmente la Dietética “Yerbabuena Tienda Saludable“ utiliza Excel como sistema de gestión de pedidos para poder controlar y analizar datos sobre proveedores, productos y ventas, pero sus datos han incrementado y con el uso se rompe constantemente el archivo, por este motivo se encuentra en la necesidad de diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con su negocio.

### DESCRIPCION DEL PROBLEMA:

•	**Pedidos**: Contiene la información de los pedidos realizados por los clientes, incluyendo detalles como fecha, Productos, precio por unidad, Precio total, y método de pago utilizado.

•	**Productos**: Incluye los productos disponibles para la venta, con detalles como nombre, descripción, precio y stock. Además, se quiere hacer referencia a las categorías a las que pertenecen y los proveedores que los suministran.

•	**Facturación**: Base de datos que contiene los detalles específicos de cada factura asociada a un pedido, como cantidad, precio unitario y subtotal.

•  **Gestion de Clientes**: Base de datos que almacena la información de los clientes que realizan pedidos.

•	**Proveedores**: Para gestionar la información de los proveedores que suministran productos a la dietética.

•	**Categorías**: Define las categorías a las que pertenecen los productos.

•	**Métodos de Pago**: Contiene información sobre los métodos de pago disponibles para los clientes (Efectivo, Debito, Crédito, Billeteras virtuales)


### OBJETIVO:

Diseñar e implementar una base de datos relacional que cumpla con los requerimientos de la dietética en cuanto a gestión de pedidos, facturas y controles internos de stock y proveedores, esta base  de datos debe ser eficiente y fácil de mantener, para poder gestionar y analizar de manera ágil y precisa las operaciones

### DESCRIPCION DE LA BASE DE DATOS

### Tablas:

1. **CLIENTE**:
   - Almacena información sobre los clientes que realizan reservas.
   - Atributos: ID cliente, Nombre, Telefono, email, Dirección.

2. **PROVEEDOR**:
   - CContiene información sobre los proveedores.
   - Atributos: ID Proveedor, Nombre, Dirección, Telefono, email.

3. **PRODUCTOS**:
   - Contiene información sobre los productos, incluyendo referencias al proveedor y a la categoría del producto.
   - Atributos: ID Producto, Nombre, Descripción, Precio Venta, Precio Costo, Stock Actual, Stock Minimo, ID Proveedor, ID Categoria.
     
4. **PEDIDOS**:
   - Registra los pedidos realizados por los clientes, incluyendo el método de pago.
   - Atributos: ID Pedido, Fecha, Total, ID CLiente, ID Metodopago.

5. **FACTURAS**:
   - Registra las facturas generadas a partir de los pedidos.
   - Atributos: IID Factura,Fecha, Total, ID pedido;.

6. **METODO DE PAGO**:
   - Define los métodos de pago disponibles.
   - Atributos: ID Metodo de Pago, Nombre, Descripción.

7. **CATEGORIA DE PRODUCTO**:
   - Define las categorías a las que pueden pertenecer los productos.
   - Atributos: IID Categoria, Nombre, Descripción.

### Problemática Resuelta:

Esta base de datos permite gestionar eficientemente el proceso de pedidos y controles de productos, desde la información de los clientes y proveedores hasta la facturación. Algunos aspectos que aborda incluyen:

- Registro de clientes y proveedores.
- Categorias de los productos y cantidades.
- Gestión de los pedidos y facturas.

#### Diagrama Entidad Relacion

El diagrama fue desarrollado en excalidraw
<center>
<img src=(https://github.com/Yeimmy-ux/Proyecto_Dietetica_Labrador/assets/174386228/5fc5610e-a781-41b3-903c-a51714081e23) style="width: 100% ; aspect-ratio:16/9">
</center>


#### DER simplificado
```
+------------------+        +----------------------+        +------------------+
|      CLIENTE     |        |       PEDIDO         |        | Metedo_de_pago   |
+------------------+        +----------------------+        +------------------+
| IDCliente (PK)   |<>-----o| IDPedido  (PK)       |o-----<>| IDMetodoPago(PK)||
| nombre           |        | IDCliente (FK)       |        | nombre           |
| telefono         |        | IDProducto (FK)      |        | descripcion      |
| email            |        | idEmpleado (FK)      |        +------------------+
| direccion        |     --o| idMetodoPago (FK)    |          
+------------------+    |   | fecha                |        
                        |   | Total                |
            |-----------    +----------------------+                  
            |                        |                                  
            |                        |                                  
            |                        |                                  
            <>                       v                                  
+------------------+        +-------------------+             +-------------------+
|     Factura      |        |      Producto     |             |     Proveedor     |
+------------------+        +-------------------+             +-------------------+
| IDFactura (PK)   |        | IDProducto (PK)   |             | IDProveedor (PK)  |
| Fecha            |        | IDProveedor(FK)   |<>----------o| nombre            |
| Total            |        | ICategoria(FK)    |             | Direccion         |
| IDPedido(FK)     |        | Descripcion       |             | telefono          | 
+------------------+        | Precio Costo      |             | Email             |
                            | Stock Actual      |             +-------------------+
                            | Stock Minimo      |
                            +-------------------+
                                     <>
                                      |
                                      |
                                      o
                            +-------------------+
                            |Categoria_Producto |
                            +-------------------+
                            | IDCategoria(PK)   |
                            | nombre            |
                            | descripcion       |
                            +-------------------+
```

### DOCUMENTACION DE VISTAS

### Vista: vista_detalles_pedidos

**Descripción:**
Esta vista proporciona una visión detallada de los pedidos realizados en el sistema, incluyendo información del cliente, método de pago utilizado y el producto comprado. Es útil para revisar el detalle completo de cada pedido.

**Columnas:**

• IDPedido: Identificador único del pedido.

• Fecha_Pedido: Fecha en la que se realizó el pedido.

• Total_Pedido: Monto total del pedido.

• Nombre_Cliente: Nombre del cliente que realizó el pedido.

• Metodo_Pago: Nombre del método de pago utilizado para el pedido.

• Producto: Nombre del producto incluido en el pedido.

**Ejemplo de consulta:**: 

```sql
SELECT * FROM db_dietetica.vista_detalles_pedidos
WHERE Fecha_Pedido BETWEEN '2024-07-01' AND '2024-07-30'
AND Metodo_Pago = 'Tarjeta de Crédito';
```


### Vista: vista_facturacion_cliente

**Descripción:**
Esta vista muestra la facturación total acumulada por cada cliente. Resume el total facturado por cliente basado en la información de pedidos y facturas, proporcionando un panorama de cuánto ha gastado cada cliente en total.

**Columnas:**

• IDCliente: Identificador único del cliente.

• Nombre_Cliente: Nombre del cliente.

• Total_Facturado: Suma total de las facturas para el cliente.

**Ejemplo de consulta:**:

```sql
SELECT * FROM db_dietetica.vista_facturacion_cliente
WHERE Total_Facturado > 100
ORDER BY Total_Facturado DESC;
```

### DOCUMENTACION DE FUNCIONES

### Función: Calcular_Total_Ventas_Producto

**Descripción:**
Esta función calcula el total de ventas para un producto específico sumando el total de todos los pedidos que incluyen ese producto. Es útil para obtener una visión general de las ventas acumuladas de un producto particular.

**Parámetros:**

• p_IDProducto (INT): El identificador del producto para el cual se desea calcular el total de ventas.

**Retorno:**

DECIMAL(10, 2): El total de ventas acumulado para el producto especificado, con dos decimales.

**Ejemplo de consulta:**: 

```sql
SELECT Calcular_Total_Ventas_Producto(11) AS Total_Ventas;
```

En este ejemplo, la función calcula el total de ventas para el producto con el identificador 11.


### Función: Verificar_Stock_Minimo

**Descripción:**
Esta función verifica si el stock actual de un producto está por debajo del stock mínimo requerido. Es útil para la gestión de inventarios, ya que ayuda a identificar cuándo es necesario reabastecer un producto.

**Parámetros:**

• p_IDProducto (INT): El identificador del producto para verificar el stock.

**Retorno:**

BOOLEAN: Devuelve TRUE si el stock actual del producto es menor que el stock mínimo; de lo contrario, devuelve FALSE.

**Ejemplo de consulta:**: 

```sql
SELECT Verificar_Stock_Minimo(11) AS Stock_Bajo;
```

En este ejemplo, la función verifica si el stock del producto con el identificador 11 está por debajo del nivel mínimo. Si el stock es bajo, la función devuelve TRUE; si no, devuelve FALSE.

### DOCUMENTACION DE TRIGGERS

### Trigger: Actualizar_Stock_After_Pedido

**Descripción:**
Este trigger se activa automáticamente después de la inserción de un nuevo registro en la tabla PEDIDO. Su función principal es actualizar el stock del producto correspondiente, reduciendo el stock actual en una unidad cada vez que se realiza un nuevo pedido.

**Detalles:**

• Evento: AFTER INSERT en la tabla PEDIDO.

• Acción: Resta 1 al StockActual del producto asociado al pedido.

• Tabla afectada: PRODUCTO.

• Referencia: Usa el valor de NEW.IDProducto del registro recién insertado en PEDIDO.

**Ejemplo de funcionamiento:**

Supongamos que se inserta un nuevo pedido para el producto con IDProducto 12:

```sql
INSERT INTO PEDIDO (IDPedido, IDCliente, IDProducto, Total) 
VALUES (1, 1, 12, 50.00);
```
Después de ejecutar esta inserción, el stock del producto con IDProducto 12 en la tabla PRODUCTO se actualizará automáticamente, reduciendo su StockActual en 1.

### Trigger: Verificar_Stock_Minimo_After_Update

**Descripción:**
Este trigger se activa automáticamente después de una actualización en la tabla PRODUCTO. Su propósito es verificar si el stock actual del producto, después de la actualización, es menor que el stock mínimo requerido. Si el stock actual es insuficiente, el trigger genera un error para alertar sobre la situación.

**Detalles:**

• Evento: AFTER UPDATE en la tabla PRODUCTO.

• Acción: Verifica si StockActual es menor que StockMinimo después de la actualización. Si es así, se genera un error con un mensaje personalizado.

• Condición: Compara el stock actual con el stock mínimo utilizando OLD (valores anteriores antes de la actualización).

• Manejo de errores: Usa SIGNAL SQLSTATE '45000' para lanzar un error y mostrar un mensaje específico.

**Ejemplo de funcionamiento:**

Supongamos que se actualiza el stock de un producto con IDProducto 12:

```sql
UPDATE PRODUCTO 
SET StockActual = 5 
WHERE IDProducto = 12;
```

Si el stock mínimo para este producto es 10 y el stock actual después de la actualización queda por debajo de ese umbral, el trigger generará un error con el mensaje "Stock actual por debajo del stock mínimo."

### DOCUMENTACION DE TRIGGERS

### Procedimiento Almacenado: Agregar_Producto

**Descripción:**
Este procedimiento almacenado se utiliza para agregar un nuevo producto a la tabla PRODUCTO. Permite ingresar todos los detalles relevantes del producto, como nombre, descripción, precios, stock, proveedor y categoría.

**Parámetros:**

• p_Nombre (VARCHAR(100)): Nombre del producto.

• p_Descripcion (TEXT): Descripción del producto.

• p_PrecioVenta (DECIMAL(10, 2)): Precio de venta del producto.

• p_PrecioCosto (DECIMAL(10, 2)): Precio de costo del producto.

• p_StockActual (INT): Cantidad actual en stock del producto.

• p_StockMinimo (INT): Stock mínimo del producto.

• p_IDProveedor (INT): Identificador del proveedor del producto.

• p_IDCategoria (INT): Identificador de la categoría del producto.

**Retorno:**

SELECT 'Producto creado exitosamente.'; (Este retorno se maneja como un mensaje de confirmación en lugar de un valor de retorno tradicional.)

**Ejemplo de uso:**


```sql
CALL Agregar_Producto(
  'Proteína Whey',
  'Suplemento de proteína para deportistas',
  29.99,
  15.00,
  100,
  10,
  3,
  2
);
```

En este ejemplo, se agrega un producto llamado "Proteína Whey" con sus respectivos detalles a la tabla PRODUCTO.

### Procedimiento Almacenado: Registrar_Pedido

**Descripción:**
Este procedimiento almacenado se utiliza para registrar un nuevo pedido en la tabla PEDIDO. Inserta información relevante sobre el pedido, incluyendo la fecha, el total del pedido, el cliente, el producto y el método de pago.

**Parámetros:**

• p_Fecha (DATE): Fecha en la que se realizó el pedido.

• p_Total (DECIMAL(10, 2)): Monto total del pedido.

• p_IDCliente (INT): Identificador del cliente que realiza el pedido.

• p_IDProducto (INT): Identificador del producto incluido en el pedido.

• p_IDMetodoPago (INT): Identificador del método de pago utilizado para el pedido.

**Retorno:**

No tiene un valor de retorno explícito. La operación se completa con la inserción del nuevo registro en la tabla PEDIDO.

**Ejemplo de uso:**

```sql
CALL Registrar_Pedido(
  '2024-07-31',
  89.75,
  5,
  11,
  2
);
```

En este ejemplo, se registra un pedido realizado el 31 de julio de 2024, con un total de 89.75 Pesos, realizado por el cliente con ID 5, para el producto con ID 111, utilizando el método de pago con ID 2.


## Roles y permisos

En esta seccion determinamos la creación de 2 usuarios que representan las areas encargadas: admin y finanzas. A continuación se detallan los permisos y usuarios de cada uno de ellos.

Rol: Admin
Accesos a: todas las tablas de la base de datos.
Permisos: completos. Incluye: SELECT, INSERT, UPDATE, y DELETE.
Posee conexion desde cualquier host ('%')
Usuario: role_admin, contraseña: 1224.

Rol: Finanzas
Accesos a: las tablas necesarias para calculos financieros incluye tablas de factura, metodo de pago y pedidos.
Permisos: SELECT e INSERT para la tabla de 'Payment_History'. SELECT en el resto de las tablas mencionadas anteriormente.
Usuario: role_finanzas, contraseña: 12ab. 

## Back up de la base de datos

Descripción: Se realiza un backup de la base de datos a través de MySQL Workbench. Se adjunta en el repositorio dentro de la carpeta 'backups' el archivo con el script completo que incluye tanto la estructura como la data de la BD.


## Herramientas y tecnologias usadas

## Como levantar el proyecto en CodeSpaces GitHub
* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creacción del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores

#### Pasos para arrancar el proyecto

* En la terminal escribir :
    - `make` _si te da un error de que no conexion al socket, volver al correr el comando `make`_
    - `make clean-db` limpiar la base de datos
    - `make test-db` para mirar los datos de cada tabla
    - `make backup-db` para realizar un backup de mi base de datos
    - `make access-db` para acceder a la base de datos
