-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
select * from test.usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
select count(id_usuario) as Numero_Usuarios from test.usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
select * from test.usuarios_lenguajes where edad > 30;


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
select count(id_usuario) as Usuarios_JavaScript from test.usuarios_lenguajes where lenguaje = 'JavaScript';


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
select * from test.usuarios_lenguajes where edad = 28;


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
select * from test.usuarios_lenguajes where email = 'juan.gomez@example.com';


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
select * from test.usuarios_lenguajes where lenguaje = 'Java' and edad < 25;


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
select count(*) as Usuarios_JavaScript, edad, lenguaje
  from test.usuarios_lenguajes 
 where lenguaje ='Java'
 group by edad, lenguaje;


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
select * from test.usuarios_lenguajes where lenguaje = ''; --- tendrá que estar vacío porque el campo es not null


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
select nombre, edad
  from test.usuarios_lenguajes 
 order by edad asc
 limit 1;

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
select nombre, apellido, edad
  from test.usuarios_lenguajes 
 order by edad desc;

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
select count(*) as usuarios_mayores_28
  from test.usuarios_lenguajes 
 where edad > 28;

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
select *
  from test.usuarios_lenguajes 
 where apellido like '%a%'; 


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
select lenguaje, COUNT(*) AS cantidad_usuarios
  from test.usuarios_lenguajes 
 where edad < 30
 group by lenguaje
 order by cantidad_usuarios desc
 limit 1;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
select * from test.usuarios_lenguajes where edad > 25 and lenguaje = 'TypeScript';


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
select count(*) as usuarios_python from test.usuarios_lenguajes where lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
select nombre, apellido, lenguaje
  from test.usuarios_lenguajes
 where lenguaje !=''
 order by nombre, apellido;

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
select nombre, apellido, email
  from test.usuarios_lenguajes
 where email like '%example%';

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
select distinct nombre, apellido
  from test.usuarios_lenguajes
 where lenguaje !='' and edad between 25 and 35;

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
select count(*) as usuarios_css
  from test.usuarios_lenguajes
 where lenguaje ='CSS' and edad < 30;


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
select nombre, apellido, count(lenguaje) as lenguajes
  from test.usuarios_lenguajes
 where lenguaje !=''
 group by nombre, apellido;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
select lenguaje, LENGTH(lenguaje) as longitud
  from test.usuarios_lenguajes
 order by LENGTH(lenguaje) desc
 limit 1;  


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
select concat(nombre, ' ', apellido) as nombre_y_apellidos
  from test.usuarios_lenguajes
 order by nombre, apellido;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
select count(distinct(lenguaje)) as num_lenguajes
  from test.usuarios_lenguajes
 where lenguaje !='' and edad > 25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
select edad, count(edad) as num_usuarios_misma_edad
  from test.usuarios_lenguajes
 group by edad
having count(edad) > 1
 order by edad;


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
select nombre, apellido, edad, lenguaje, LENGTH(lenguaje) as longitud
  from test.usuarios_lenguajes
 where edad < 30
 order by LENGTH(lenguaje) desc
 limit 1;  

-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
select distinct nombre, apellido, email
  from test.usuarios_lenguajes
 where lenguaje !=''
 order by 1, 2


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
select count(*) as num_usuarios_letra_G
  from test.usuarios_lenguajes
 where apellido like 'G%';


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
select *
  from test.usuarios_lenguajes
 where lenguaje like 'J%'
 order by LENGTH(lenguaje) asc
 limit 1;  

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
select *
  from test.usuarios_lenguajes
 where edad > 30
 order by LENGTH(lenguaje) ASC, edad ASC
 limit 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
select *
  from test.usuarios_lenguajes
 where lenguaje != ''
 order by lenguaje asc;


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
select count(*) as num_usuarios_20_25_lenguaje
  from test.usuarios_lenguajes
 where lenguaje != '' and edad between 20 and 25
 order by lenguaje asc;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
select *
  from test.usuarios_lenguajes
 where lenguaje != 'SQL' 
 order by nombre, apellido asc;


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
select lenguaje, nombre, apellido, edad
  from test.usuarios_lenguajes
 where edad >= 30
 order by length(lenguaje) desc
limit 1;  


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
select nombre, apellido, edad, (edad - (select AVG(edad) from test.usuarios_lenguajes)) as Diff_con_Media_Edad
  from test.usuarios_lenguajes


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
select count(*) as num_usuarios_lenguaje_Script
  from test.usuarios_lenguajes
 where lenguaje like '%Script%';


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
select length(nombre) as longitud_nombre, nombre, apellido, edad, lenguaje
  from test.usuarios_lenguajes
 where lenguaje != ''
 order by nombre, apellido asc;


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
 select lenguaje
   from test.usuarios_lenguajes
   order by id_usuario desc
   limit 1; 


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
 select SUM(edad) as suma_edades
   from test.usuarios_lenguajes;


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
select count(*) as usuarios_letra_P_menores_28
  from test.usuarios_lenguajes
 where apellido like 'P%' and edad < 28;
