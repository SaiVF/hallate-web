# Ejecutar lo siguiente para que pueda configurar el método de autenticación en el servidor MySQL para que sea compatible con el cliente.

# Conéctate al contenedor de MySQL. Puedes hacer esto ejecutando el siguiente comando en tu terminal:
    > docker exec -it NOMBRE_DEL_CONTENEDOR_MYSQL bash
    Sustituye NOMBRE_DEL_CONTENEDOR_MYSQL por el nombre de tu contenedor MySQL.

# Una vez dentro del contenedor, conéctate a MySQL usando el cliente de línea de comandos:
    > mysql -u root -p
    Ingresa la contraseña cuando se solicite.

# Ejecuta el siguiente comando para cambiar el método de autenticación para el usuario de la base de datos:
    > ALTER USER 'hallate_hallate'@'%' IDENTIFIED WITH 'mysql_native_password' BY '20lemuluKO';

# Sal del cliente MySQL y del contenedor.
    > exit
    También puedes salir del contenedor MySQL ejecutando exit nuevamente.
