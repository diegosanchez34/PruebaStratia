1. Clonar repositorio en una carpeta local.

	https://github.com/diegosanchez34/prueba.git

2. Descargar e instalar Ruby.

	https://rubyinstaller.org/

3. Abrir una terminal y instalar rails.

	gem install rails

4. Si tiene Node.js instalado, abrir una consola e instalar yarn.

	npm install --global yarn

5. Instalar los modulos necesarios de yarn.

	yarn install

6. Descargar e instalar PostgreSQL.

	https://www.enterprisedb.com/downloads/postgres-postgresql-downloads

7. Configurar el archivo config/database.yml con las siguientes credenciales.

 	username: postgres
 	password: admin (contraseña definida durante la instalación de PostgreSQL)
 	host: localhost

8. Agregar el Paquete de instalación de gems.

	gem install bundler

9. Instalar las gem del proyecto.

	bundler install

10. Configurar la base de datos.

	rails db:setup

7. Correr el servidor.

	rails server