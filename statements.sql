-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
SELECT * FROM test.usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
SELECT count(id_usuario) as Numero_Usuarios FROM test.usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
SELECT * FROM test.usuarios_lenguajes WHERE edad > 30;


-- Ejercicio 4: Contar cuántos usuarios saben JavASCript.
SELECT count(id_usuario) as Usuarios_Javascript FROM test.usuarios_lenguajes WHERE lenguaje = 'Javascript';


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
SELECT * FROM test.usuarios_lenguajes WHERE edad = 28;


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
SELECT * FROM test.usuarios_lenguajes WHERE email = 'juan.gomez@example.com';


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
SELECT * FROM test.usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
SELECT count(*) as Usuarios_Javascript, edad, lenguaje
  FROM test.usuarios_lenguajes 
 WHERE lenguaje ='Java'
 group by edad, lenguaje;


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
SELECT * FROM test.usuarios_lenguajes WHERE lenguaje = ''; --- tendrá que estar vacío porque el campo es not null


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
SELECT nombre, edad
  FROM test.usuarios_lenguajes 
 ORDER BY edad ASC
 LIMIT 1;

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma DESCendente.
SELECT nombre, apellido, edad
  FROM test.usuarios_lenguajes 
 ORDER BY edad DESC;

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
SELECT count(*) as usuarios_mayores_28
  FROM test.usuarios_lenguajes 
 WHERE edad > 28;

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
SELECT *
  FROM test.usuarios_lenguajes 
 WHERE apellido like '%a%'; 


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
SELECT lenguaje, COUNT(*) AS cantidad_usuarios
  FROM test.usuarios_lenguajes 
 WHERE edad < 30
 group by lenguaje
 ORDER BY cantidad_usuarios DESC
 LIMIT 1;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
SELECT * FROM test.usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
SELECT count(*) as usuarios_python FROM test.usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
SELECT nombre, apellido, lenguaje
  FROM test.usuarios_lenguajes
 WHERE lenguaje !=''
 ORDER BY nombre, apellido;

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
SELECT nombre, apellido, email
  FROM test.usuarios_lenguajes
 WHERE email like '%example%';

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
SELECT DISTINCT nombre, apellido
  FROM test.usuarios_lenguajes
 WHERE lenguaje !='' AND edad BETWEEN 25 AND 35;

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
SELECT count(*) as usuarios_css
  FROM test.usuarios_lenguajes
 WHERE lenguaje ='CSS' AND edad < 30;


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
SELECT nombre, apellido, count(lenguaje) as lenguajes
  FROM test.usuarios_lenguajes
 WHERE lenguaje !=''
 group by nombre, apellido;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
SELECT lenguaje, LENGTH(lenguaje) as longitud
  FROM test.usuarios_lenguajes
 ORDER BY LENGTH(lenguaje) DESC
 LIMIT 1;  


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
SELECT concat(nombre, ' ', apellido) as nombre_y_apellidos
  FROM test.usuarios_lenguajes
 ORDER BY nombre, apellido;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
SELECT count(DISTINCT(lenguaje)) as num_lenguajes
  FROM test.usuarios_lenguajes
 WHERE lenguaje !='' AND edad > 25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
SELECT edad, count(edad) as num_usuarios_misma_edad
  FROM test.usuarios_lenguajes
 group by edad
having count(edad) > 1
 ORDER BY edad;


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
SELECT nombre, apellido, edad, lenguaje, LENGTH(lenguaje) as longitud
  FROM test.usuarios_lenguajes
 WHERE edad < 30
 ORDER BY LENGTH(lenguaje) DESC
 LIMIT 1;  

-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
SELECT DISTINCT nombre, apellido, email
  FROM test.usuarios_lenguajes
 WHERE lenguaje !=''
 ORDER BY 1, 2;


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
SELECT count(*) as num_usuarios_letra_G
  FROM test.usuarios_lenguajes
 WHERE apellido like 'G%';


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
SELECT *
  FROM test.usuarios_lenguajes
 WHERE lenguaje like 'J%'
 ORDER BY LENGTH(lenguaje) ASC
 LIMIT 1;  

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
SELECT *
  FROM test.usuarios_lenguajes
 WHERE edad > 30
 ORDER BY LENGTH(lenguaje) ASC, edad ASC
 LIMIT 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
SELECT *
  FROM test.usuarios_lenguajes
 WHERE lenguaje != ''
 ORDER BY lenguaje ASC;


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
SELECT count(*) as num_usuarios_20_25_lenguaje
  FROM test.usuarios_lenguajes
 WHERE lenguaje != '' AND edad BETWEEN 20 AND 25
 ORDER BY lenguaje ASC;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
SELECT *
  FROM test.usuarios_lenguajes
 WHERE lenguaje != 'SQL' 
 ORDER BY nombre, apellido ASC;


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
SELECT lenguaje, nombre, apellido, edad
  FROM test.usuarios_lenguajes
 WHERE edad >= 30
 ORDER BY length(lenguaje) DESC
LIMIT 1;  


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
SELECT nombre, apellido, edad, (edad - (SELECT AVG(edad) FROM test.usuarios_lenguajes)) as Diff_con_Media_Edad
  FROM test.usuarios_lenguajes;


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
SELECT count(*) as num_usuarios_lenguaje_Script
  FROM test.usuarios_lenguajes
 WHERE lenguaje like '%Script%';


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
SELECT length(nombre) as longitud_nombre, nombre, apellido, edad, lenguaje
  FROM test.usuarios_lenguajes
 WHERE lenguaje != ''
 ORDER BY nombre, apellido ASC;


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
 SELECT lenguaje
   FROM test.usuarios_lenguajes
   ORDER BY id_usuario DESC
   LIMIT 1; 


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
 SELECT SUM(edad) as suma_edades
   FROM test.usuarios_lenguajes;


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
SELECT count(*) as usuarios_letra_P_menores_28
  FROM test.usuarios_lenguajes
 WHERE apellido like 'P%' AND edad < 28;
 
 