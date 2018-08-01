/*
 * Author: Fredy Marín
 * Proposito: Dar una carga inicial de registros
 */

 --Insert user
INSERT INTO public.users(
 	 email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name, last_name, document, birthdate, address, telephone, password, password_confirmation)
	VALUES (1,'prueba@prueba.com', '$2a$11$6/K8/R.dIC8BzAJ81tBlQOPKlQdUAVIiAR49qkKfBZZA0.Yz1NRWe', null, null, null, '2018-07-28', '2018-07-28', 'Prue', 'ba', 123456, null, null, null, null, null);

--Insert points
INSERT INTO public.points(id, date, amount, created_at, updated_at, user_id)
	VALUES (1, '2018-07-28', 10, '2018-07-28', '2018-07-28', 1);

--Insert products
INSERT INTO public.products(
	id, name, description, price, amount, image, created_at, updated_at)
	VALUES (1, 'puntos', 'producto puntos', 10, 10, null, '2018/07/28', '2018/07/28');

--Insert recycling station
INSERT INTO public.recycling_stations(
	id, name, address, telephone, latitude, longitude, description, created_at, updated_at)
	VALUES (1, 'Estación 1', 'Calle 100', '1234', 123.45, 123.45, 'Estación uno', '2018/07/28', '2018/07/28');

--Insert store
INSERT INTO public.stores(
	id, name, telephone, email, address, created_at, updated_at)
	VALUES (1, 'Tienda virutal', 'Tel 1234', 'tienda@virtual.com', 'Calle 100', '2018/07/28', '2018/07/28');

--Insert order
INSERT INTO public.orders(
	id, status, code, created_at, updated_at, user_id, recycling_station_id, store_id)
	VALUES (1, 'Activa', 1234, '2018/07/28', '2018/07/28', 1, 1, 1);
	
--Insert item
INSERT INTO public.items(
	id, description, price, amount, created_at, updated_at, product_id, order_id, points)
	VALUES (1, 'Descripción prueba', 1000, 1000, '2018/07/28', '2018/07/28', 1, 1, 10);