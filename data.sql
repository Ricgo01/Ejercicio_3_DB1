-------------------------------
-- Inserción de Usuarios (clientes y vendedores)
-------------------------------
INSERT INTO usuarios (nombre, email, contraseña, telefono, direccion, tipo_usuario)
VALUES
  ('Juan Perez', 'juanperez@example.com', 'password123', '555-1234', 'Calle Falsa 123', 'cliente'),
  ('Maria Lopez', 'marialopez@example.com', 'password123', '555-5678', 'Avenida Siempre Viva 456', 'cliente'),
  ('Carlos Garcia', 'carlosgarcia@example.com', 'password123', '555-9012', 'Boulevard de los Sueños 789', 'vendedor'),
  ('Ana Torres', 'anatorres@example.com', 'password123', '555-3456', 'Camino Real 101', 'cliente'),
  ('Luis Fernandez', 'luisfernandez@example.com', 'password123', '555-7890', 'Ruta 66', 'vendedor'),
  ('Sofia Martinez', 'sofiamartinez@example.com', 'password123', '555-2345', 'Calle 5 de Mayo 202', 'vendedor');

-------------------------------
-- Inserción de Categorías
-------------------------------
INSERT INTO categorias (nombre, descripcion)
VALUES
  ('Electrónica', 'Dispositivos y gadgets'),
  ('Ropa', 'Prendas de vestir y accesorios'),
  ('Hogar', 'Artículos para el hogar y decoración');
  ('Accesorios', 'Accesorios y complementos de moda'),
  ('Deportes', 'Artículos deportivos y equipamiento'),
  ('Libros', 'Libros físicos y electrónicos');


-------------------------------
-- Inserción de Productos
-------------------------------
INSERT INTO productos (vendedor_id, categoria_id, nombre, descripcion, precio, stock, estado, fecha_creacion)
VALUES
  (3, 1, 'Smartphone X', 'Teléfono inteligente con 128GB', 299.99, 50, 'disponible', CURRENT_TIMESTAMP - INTERVAL '30 days'),
  (5, 2, 'Camiseta Deportiva', 'Camiseta de alta calidad para deporte', 19.99, 100, 'disponible', CURRENT_TIMESTAMP - INTERVAL '29 days'),
  (6, 3, 'Lámpara LED', 'Lámpara de escritorio LED', 39.99, 75, 'disponible', CURRENT_TIMESTAMP - INTERVAL '28 days'),
  (3, 1, 'Tablet Y', 'Tablet de 10 pulgadas con 64GB', 199.99, 40, 'disponible', CURRENT_TIMESTAMP - INTERVAL '27 days'),
  (5, 2, 'Pantalón Jeans', 'Jeans de mezclilla de corte clásico', 49.99, 60, 'disponible', CURRENT_TIMESTAMP - INTERVAL '26 days'),
  (6, 3, 'Cafetera', 'Cafetera automática con múltiples funciones', 89.99, 30, 'disponible', CURRENT_TIMESTAMP - INTERVAL '25 days'),
  (3, 1, 'Auriculares Inalámbricos', 'Auriculares Bluetooth con cancelación de ruido', 59.99, 80, 'disponible', CURRENT_TIMESTAMP - INTERVAL '24 days'),
  (5, 2, 'Chaqueta Deportiva', 'Chaqueta ligera para actividades al aire libre', 79.99, 45, 'disponible', CURRENT_TIMESTAMP - INTERVAL '23 days'),
  (6, 3, 'Sofá 2 Plazas', 'Sofá cómodo para sala de estar', 299.99, 10, 'disponible', CURRENT_TIMESTAMP - INTERVAL '22 days'),
  (3, 1, 'Monitor LED 24"', 'Monitor de 24 pulgadas para escritorio', 149.99, 25, 'disponible', CURRENT_TIMESTAMP - INTERVAL '21 days'),
  (5, 2, 'Vestido de Verano', 'Vestido ligero para la temporada de verano', 39.99, 70, 'disponible', CURRENT_TIMESTAMP - INTERVAL '20 days'),
  (6, 3, 'Set de Cubiertos', 'Juego de cubiertos de acero inoxidable', 29.99, 150, 'disponible', CURRENT_TIMESTAMP - INTERVAL '19 days'),
  (3, 1, 'Laptop Z', 'Laptop con 8GB RAM y 256GB SSD', 499.99, 20, 'disponible', CURRENT_TIMESTAMP - INTERVAL '18 days'),
  (5, 2, 'Zapatos Deportivos', 'Zapatos cómodos para correr', 59.99, 90, 'disponible', CURRENT_TIMESTAMP - INTERVAL '17 days'),
  (6, 3, 'Mesa de Centro', 'Mesa de centro moderna para sala', 129.99, 15, 'disponible', CURRENT_TIMESTAMP - INTERVAL '16 days'),
  (3, 1, 'Smartwatch', 'Reloj inteligente con seguimiento de actividad', 99.99, 60, 'disponible', CURRENT_TIMESTAMP - INTERVAL '15 days'),
  (5, 2, 'Bolso de Mano', 'Bolso elegante para mujer', 49.99, 80, 'disponible', CURRENT_TIMESTAMP - INTERVAL '14 days'),
  (6, 3, 'Silla Ergonómica', 'Silla ergonómica para oficina', 89.99, 35, 'disponible', CURRENT_TIMESTAMP - INTERVAL '13 days'),
  (3, 1, 'Cámara Digital', 'Cámara compacta con zoom óptico', 199.99, 40, 'disponible', CURRENT_TIMESTAMP - INTERVAL '12 days'),
  (5, 2, 'Sombrero', 'Sombrero de moda para el verano', 19.99, 100, 'disponible', CURRENT_TIMESTAMP - INTERVAL '11 days'),
  (6, 3, 'Colchón Queen', 'Colchón cómodo de tamaño Queen', 299.99, 12, 'disponible', CURRENT_TIMESTAMP - INTERVAL '10 days'),
  (3, 1, 'Impresora Multifuncional', 'Impresora con escáner y copias', 129.99, 30, 'disponible', CURRENT_TIMESTAMP - INTERVAL '9 days'),
  (5, 2, 'Falda', 'Falda elegante para ocasiones formales', 34.99, 55, 'disponible', CURRENT_TIMESTAMP - INTERVAL '8 days'),
  (6, 3, 'Cortina', 'Cortina opaca para sala de estar', 39.99, 80, 'disponible', CURRENT_TIMESTAMP - INTERVAL '7 days'),
  (3, 1, 'Bocinas Bluetooth', 'Bocinas portátiles con buena calidad de sonido', 49.99, 70, 'disponible', CURRENT_TIMESTAMP - INTERVAL '6 days'),
  (5, 2, 'Sudadera', 'Sudadera con capucha, ideal para invierno', 29.99, 65, 'disponible', CURRENT_TIMESTAMP - INTERVAL '5 days'),
  (6, 3, 'Refrigerador', 'Refrigerador de 300 litros, eficiente energéticamente', 399.99, 8, 'disponible', CURRENT_TIMESTAMP - INTERVAL '4 days'),
  (3, 1, 'Mouse Inalámbrico', 'Mouse ergonómico para computadora', 19.99, 120, 'disponible', CURRENT_TIMESTAMP - INTERVAL '3 days'),
  (5, 2, 'Bota de Montaña', 'Bota resistente para senderismo', 89.99, 40, 'disponible', CURRENT_TIMESTAMP - INTERVAL '2 days'),
  (6, 3, 'Ventilador de Pie', 'Ventilador oscilante para clima cálido', 59.99, 50, 'disponible', CURRENT_TIMESTAMP - INTERVAL '1 day');
  (5, 4, 'Collar Elegante', 'Collar con piedras de fantasía', 15.99, 40, 'disponible', CURRENT_TIMESTAMP - INTERVAL '7 days'),
  (6, 4, 'Gorra Estilizada', 'Gorra casual con diseño urbano', 12.99, 60, 'disponible', CURRENT_TIMESTAMP - INTERVAL '6 days'),
  (3, 5, 'Balón de Fútbol', 'Balón profesional para uso en césped', 29.99, 50, 'disponible', CURRENT_TIMESTAMP - INTERVAL '5 days'),
  (5, 5, 'Raqueta de Tenis', 'Raqueta ligera y resistente', 89.99, 25, 'disponible', CURRENT_TIMESTAMP - INTERVAL '4 days'),
  (6, 5, 'Pesas 5kg', 'Par de mancuernas de 5kg', 34.99, 40, 'disponible', CURRENT_TIMESTAMP - INTERVAL '3 days'),
  (3, 6, 'Libro de Cocina', 'Recetario de comida internacional', 24.99, 30, 'disponible', CURRENT_TIMESTAMP - INTERVAL '2 days'),
  (5, 6, 'Novela de Misterio', 'Libro de suspenso y misterio', 19.99, 50, 'disponible', CURRENT_TIMESTAMP - INTERVAL '1 days'),
  (6, 6, 'Cómic Coleccionable', 'Edición especial de cómic', 14.99, 20, 'disponible', CURRENT_TIMESTAMP),
  (3, 4, 'Cinturón de Cuero', 'Cinturón resistente de cuero genuino', 25.99, 45, 'disponible', CURRENT_TIMESTAMP - INTERVAL '3 days'),
  (5, 4, 'Bufanda de Lana', 'Bufanda tejida para clima frío', 18.99, 55, 'disponible', CURRENT_TIMESTAMP - INTERVAL '2 days');


-------------------------------
-- Inserción de Pedidos 
-------------------------------
INSERT INTO pedidos (comprador_id, total, estado, fecha_pedido)
VALUES
  (1, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '0 months'),
  (2, 19.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '1 month'),
  (1, 49.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '2 months'),
  (4, 29.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '3 months'),
  (1, 99.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '4 months'),
  (2, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '5 months'),
  (1, 39.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '6 months'),
  (4, 79.99,  'pendiente', CURRENT_TIMESTAMP - INTERVAL '7 months'),
  (1, 69.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '8 months'),
  (2, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '9 months'),
  (1, 49.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '10 months'),
  (2, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '11 months'),
  (1, 99.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '0 months'),
  (2, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '1 month'),
  (4, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '2 months'),
  (1, 69.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '3 months'),
  (2, 89.99,  'cancelado', CURRENT_TIMESTAMP - INTERVAL '4 months'),
  (4,129.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '5 months'),
  (1, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '6 months'),
  (2, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '7 months'),
  (1, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '8 months'),
  (2, 99.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '9 months'),
  (4,119.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '10 months'),
  (1, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '11 months'),
  (2, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '0 months'),
  (4,129.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '1 month'),
  (1, 69.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '2 months'),
  (2, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '3 months'),
  (4,149.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '4 months'),
  (1, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '5 months'),
  (2, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '6 months'),
  (4, 99.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '7 months'),
  (1, 69.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '8 months'),
  (2, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '9 months'),
  (4,129.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '10 months'),
  (1, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '11 months'),
  (2, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '0 months'),
  (4,139.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '1 month'),
  (1, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '2 months'),
  (2,109.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '3 months'),
  (1, 99.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '4 months'),
  (2, 69.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '5 months'),
  (4, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '6 months'),
  (1, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '7 months'),
  (2,109.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '8 months'),
  (4, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '9 months'),
  (1, 99.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '10 months'),
  (2, 59.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '11 months');
  (1, 119.99, 'pagado',    CURRENT_TIMESTAMP - INTERVAL '0 days');
  (2, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '10 days');
  (1, 119.99, 'pagado',    CURRENT_TIMESTAMP - INTERVAL '2 weeks'),
  (2, 89.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '1 weeks'),
  (4, 149.99, 'pendiente', CURRENT_TIMESTAMP - INTERVAL '3 days'),
  (1, 59.99,  'cancelado', CURRENT_TIMESTAMP - INTERVAL '5 days'),
  (2, 109.99, 'pagado',    CURRENT_TIMESTAMP - INTERVAL '10 days'),
  (1, 139.99, 'pagado',    CURRENT_TIMESTAMP - INTERVAL '1 months'),
  (4, 79.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '9 days'),
  (2, 49.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '4 months'),
  (1, 29.99,  'pagado',    CURRENT_TIMESTAMP - INTERVAL '15 days'),
  (2, 179.99, 'pagado',    CURRENT_TIMESTAMP - INTERVAL '20 days');



-------------------------------
-- Inserción de Detalles de Pedidos
-------------------------------
INSERT INTO detalles_pedidos (pedido_id, productos_id, cantidad, precio_unitario, subtotal)
VALUES
  (1,  1, 1, 59.99,  59.99),
  (2,  2, 1, 19.99,  19.99),
  (3,  3, 1, 49.99,  49.99),
  (4,  4, 1, 29.99,  29.99),
  (5,  5, 1, 99.99,  99.99),
  (6,  6, 1, 89.99,  89.99),
  (7,  7, 1, 39.99,  39.99),
  (8,  8, 1, 79.99,  79.99),
  (9,  9, 1, 69.99,  69.99),
  (10, 10, 1, 59.99,  59.99),
  (11, 11, 1, 89.99,  89.99),
  (12, 12, 1, 99.99,  99.99),
  (13, 13, 1, 49.99,  49.99),
  (14, 14, 1, 29.99,  29.99),
  (15, 15, 1, 99.99,  99.99),
  (16, 16, 1, 79.99,  79.99),
  (17, 17, 1, 59.99,  59.99),
  (18, 18, 1, 89.99,  89.99),
  (19, 19, 1, 69.99,  69.99),
  (20, 20, 1, 59.99,  59.99),
  (21, 21, 1, 89.99,  89.99),
  (22, 22, 1, 99.99,  99.99),
  (23, 23, 1, 49.99,  49.99),
  (24, 24, 1, 29.99,  29.99),
  (25, 25, 1, 99.99,  99.99),
  (26, 26, 1, 79.99,  79.99),
  (27, 27, 1, 59.99,  59.99),
  (28, 28, 1, 89.99,  89.99),
  (29, 29, 1, 69.99,  69.99),
  (30, 30, 1, 59.99,  59.99),
  (31, 1,  1, 59.99,  59.99),
  (32, 2,  1, 19.99,  19.99),
  (33, 3,  1, 49.99,  49.99),
  (34, 4,  1, 29.99,  29.99),
  (35, 5,  1, 99.99,  99.99),
  (36, 6,  1, 89.99,  89.99),
  (37, 7,  1, 39.99,  39.99),
  (38, 8,  1, 79.99,  79.99),
  (39, 9,  1, 69.99,  69.99),
  (40, 10, 1, 59.99,  59.99),
  (41, 11, 1, 89.99,  89.99),
  (42, 12, 1, 99.99,  99.99),
  (43, 13, 1, 49.99,  49.99),
  (44, 14, 1, 29.99,  29.99),
  (45, 15, 1, 99.99,  99.99),
  (46, 16, 1, 79.99,  79.99),
  (47, 17, 1, 59.99,  59.99),
  (48, 18, 1,139.99,139.99),
  (49, 19, 1, 69.99,  69.99),
  (50, 20, 1, 59.99,  59.99);

-------------------------------
-- Inserción de Descuentos (promociones activas)
-------------------------------
INSERT INTO descuentos (producto_id, porcentaje, fecha_inicio, fecha_final)
VALUES
  (1,  10.00, CURRENT_DATE - INTERVAL '5 days',  CURRENT_DATE + INTERVAL '25 days'),
  (5,  15.00, CURRENT_DATE - INTERVAL '10 days', CURRENT_DATE + INTERVAL '20 days'),
  (10, 5.00,  CURRENT_DATE - INTERVAL '3 days',  CURRENT_DATE + INTERVAL '27 days'),
  (15, 20.00, CURRENT_DATE - INTERVAL '2 days',  CURRENT_DATE + INTERVAL '13 days'),
  (20, 12.50, CURRENT_DATE - INTERVAL '1 day',  CURRENT_DATE + INTERVAL '29 days');