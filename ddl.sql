--usuario
CREATE TABLE usuarios(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  contraseña VARCHAR(255) NOT NULL,
  telefono VARCHAR(15),
  direccion TEXT,
  tipo_usuario VARCHAR(10) NOT NULL,
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Auditoria
CREATE TABLE auditoria(
id SERIAL PRIMARY KEY,
usuario_id INT REFERENCES usuarios (id) on DELETE RESTRICT,
accion VARCHAR(255) not null,
fecha TIMESTAMP
);

--Pedidos
CREATE TABLE pedidos(
id SERIAL PRIMARY KEY,
comprador_id INT REFERENCES usuarios(id) on DELETE RESTRICT not null,
total NUMERIC(10,2) not null,
estado VARCHAR(20) not null,
fecha_pedido TIMESTAMP
);

--Categorias
CREATE TABLE categorias(
id SERIAL PRIMARY KEY,
nombre varchar(100) NOT NULL,
descripcion TEXT
);

--Productos
create table productos(
id SERIAL PRIMARY KEY,
vendedor_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
categoria_id int references categorias(id) on delete restrict not null,
nombre VARCHAR(150) not null,
descripcion TEXT,
precio NUMERIC(20) not null,
stock int not null,
estado VARCHAR(20) not null,
fecha_creacion TIMESTAMP
);

--Detalles del pedidio
CREATE TABLE detalles_pedidos(
id SERIAL PRIMARY KEY,
pedido_id int REFERENCES pedidos(id) on DELETE RESTRICT not null,
productos_id int references productos(id) on DELETE RESTRICT not null,
cantidad int not null,
precio_unitario NUMERIC(10,2) not null,
subtotal NUMERIC(10,2) not null
);

--Califiaciones
CREATE TABLE calificaciones(
id SERIAL PRIMARY KEY,
comprador_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
vendedor_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
puntuacion int not null,
comentario text,
fecha TIMESTAMP
);

--Mensajes
CREATE TABLE mensajes(
id SERIAL PRIMARY KEY,
remitente_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
destinatario_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
contenido text not null,
fecha_envio TIMESTAMP
);

--lista_deseos
CREATE TABLE lista_deseos(
id SERIAL PRIMARY KEY,
usuario_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
producto_id int REFERENCES productos(id) on DELETE RESTRICT not null,
fecha_agregado TIMESTAMP
);

--descuentos
create table descuentos(
id SERIAL PRIMARY KEY,
producto_id int REFERENCES productos(id) on DELETE RESTRICT not null,
porcentaje NUMERIC(5,2) not null,
fecha_inicio TIMESTAMP not null,
fecha_final TIMESTAMP not null
);

--dicrecciones
create table direcciones(
id SERIAL PRIMARY KEY,
usuario_id int REFERENCES usuarios(id) on DELETE RESTRICT not null,
direccion text not null,
ciudad VARCHAR(100) not null,
codigo_postal VARCHAR(20) not null,
pais VARCHAR(100) not null
);

--pagos
create table pagos(
id SERIAL PRIMARY KEY,
pedido_id int REFERENCES pedidos(id) on DELETE RESTRICT not null,
metodo_pago varchar(20) not null,
estado varchar(20) not null,
fecha_pago TIMESTAMP
);

--envios
create table envios(
id SERIAL PRIMARY KEY,
pedido_id int REFERENCES pedidos(id) on DELETE RESTRICT not null,
direccion_entrega text not null,
fecha_envio TIMESTAMP,
fecha_entrega TIMESTAMP,
estado varchar(20) not null
);

--imagenes productos
create table imagenes_productos(
id SERIAL PRIMARY KEY,
producto_id int REFERENCES productos(id) on DELETE RESTRICT not null,
url text not null
);
