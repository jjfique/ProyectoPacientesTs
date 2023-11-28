 # DESARROLLO WEB BACK-END INTERMEDIO 
 ### Api con  Node JS, Express y TypeScript. 
Actividad calificable unidad 6

DOCENTE:
Norbey Danilo

ESTUDIANTE:
JORGE JONATHAN FIQUE

BOGOTÁ NOVIEMBRE DE 2023
# Basic API REST Citas

Node.js, Express.js, MySQL, Sequelize and Typescript Basic REST API.

You can clone this repo as starter project for your Express, MySQL API server

## Features and Functionalities 😃

- Node, Express, Typescript, MySQL and Sequelize as ORM Basic REST API
- CRUD Operations (A Controller for this)
- SQL for database: Relational MySQL - Use ORM Sequelize

## Tech Stack 💻

- [Node](https://nodejs.org/en)
- [Express](https://expressjs.com/)
- [MySQL](https://www.mysql.com)
- [Typescript](https://nodejs.dev/en/learn/nodejs-with-typescript/)
- [Sequelize](https://sequelize.org)

## Installation and Running App :zap:

**1. Clone this repo by running the following command :-**

```bash
 git clone https://github.com/norbeydanilo/api-citas-sequelize-ts.git
 cd api-citas-sequelize-ts
```

**2. Install the required package :-**

```bash
 npm install
```

**3. Now run the npm command to start the project :-**

```bash
 npm run dev
```

**4.** **🎉 Open postman and test the rest api on this url `https://127.0.0.1:3000`**

Remember that the `.env` file must be created for the API to work.

Remember to create the database. It is not necessary to run script to create tables or other specifications, as this is done by the ORM.

Additionally this project uses: 

- [TS-Nodemon](https://stackoverflow.com/questions/37979489/how-to-watch-and-reload-ts-node-when-typescript-files-change)
- [body-parser](https://www.npmjs.com/package/body-parser)
- [Dotenv](https://www.npmjs.com/package/dotenv)
- [MySQL2](https://www.npmjs.com/package/mysql2)
- [Cors](https://www.npmjs.com/package/cors)

## Data model

Entra al siguiente [repositorio](https://github.com/norbeydanilo/database-exercises/tree/main/citas) para encontrar el modelo de datos empleado para este ejemplo.

## Steps

Guía paso a paso para crear una API REST básica con TypeScript, Node.js, Express.js y Sequelize ORM para MySQL:

1. **Inicializa tu proyecto Node.js** con el comando `npm init`. Este comando te guiará para crear un archivo `package.json` que contendrá las configuraciones básicas de tu proyecto.

2. **Instala las dependencias necesarias** para tu proyecto con el siguiente comando:
```bash
npm i express nodemon body-parser mysql2 dotenv cors swagger-jsdoc swagger-ui-express
```
Esto instalará Express.js (un marco de aplicación web), nodemon (para reiniciar automáticamente tu servidor), body-parser (para analizar el cuerpo de las solicitudes HTTP), mysql2 (un controlador MySQL para Node.js), dotenv (para manejar variables de entorno), cors (para habilitar CORS), y swagger-jsdoc y swagger-ui-express (para la documentación de la API).

3. **Instala Sequelize y Sequelize-Typescript** con el comando `npm install sequelize sequelize-typescript`. Sequelize es un ORM para Node.js que soporta la sintaxis de ES6, ES7 y TypeScript.

4. **Instala ts-node y nodemon como dependencias de desarrollo** con el comando `npm install --save-dev ts-node nodemon`. Ts-node te permite ejecutar TypeScript directamente, mientras que nodemon reiniciará tu servidor automáticamente cada vez que hagas un cambio en tu código.

5. **Instala TypeScript como una dependencia de desarrollo** con el comando `npm install typescript --save-dev`.

6. **Instala los tipos de TypeScript para tus dependencias** con el comando:
```bash
npm i @types/node @types/express @types/body-parser @types/mysql @types/dotenv @types/cors @types/swagger-ui-express @types/swagger-jsdoc --save-dev
```
Esto te permitirá utilizar TypeScript con Node.js, Express.js, body-parser, mysql, dotenv, cors, swagger-ui-express y swagger-jsdoc.

7. **Inicializa tu configuración de TypeScript** con el comando `npx tsc --init`. Esto creará un archivo `tsconfig.json` en tu proyecto.

8. **Configura las opciones del compilador de TypeScript** en tu archivo `tsconfig.json`:
```json
"compilerOptions": {
    "target": "es6",   
    "module": "commonjs",
    "outDir": "./dist",
    "strict": true,
    "esModuleInterop": true,
    "experimentalDecorators": true,
    "emitDecoratorMetadata": true,
}
```
Esto configurará TypeScript para compilar a ES6, utilizar módulos CommonJS, emitir archivos compilados a la carpeta `./dist`, habilitar todas las comprobaciones de tipo estrictas, habilitar la interoperabilidad de módulos ES, y habilitar los decoradores experimentales y la emisión de metadatos de decoradores.

9. **Configura los scripts de tu proyecto** en tu archivo `package.json`:
```json
"scripts": {
    "start": "tsc && nodemon dist/app.js",
    "dev": "tsc && nodemon app.ts"
}
```
Esto te permitirá iniciar tu proyecto con `npm start` y ejecutar tu proyecto en modo de desarrollo con `npm run dev`.

10. **Crea un archivo `.env`** para almacenar tus variables de entorno.

11. **Crea un archivo `.gitignore`** para especificar los archivos y directorios que Git debe ignorar.

¡Y eso es todo! Ahora tienes una base para empezar a construir tu API REST con TypeScript, Node.js, Express.js y Sequelize ORM para MySQL. ¡Buena suerte con tu proyecto! 🚀


# Pruebas unitarias

 ### API PACIENTES

consultar todos los pacientes

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/5aa7a0eb-5093-4e16-a76e-07de58654004)

consultar por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/6c1c8fc9-271e-461c-9c3d-aa1b7555b1c6)

crear paciente  

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/a2a1ab0d-2cc3-4414-a423-d6b07fc3a909)

se realiza actualización del paciente por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/dfbd325d-eb00-43c9-b6a5-e4bf3ec8cb4b)

se creó validación si el paciente ya existe en la base de datos 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/80a07640-14f9-4fa1-b9a9-00c610174aca)

se elimina paciente por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/e83e9bc2-ce94-47b7-8f2e-3d8d70b379ad)

 ### API DE CONSULTORIOS 

Crear consultorio 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/eab9df8b-cafb-4d64-8f55-7eecc1c64ded)
 
Consultar consultorio

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/dc61f228-3e3a-4013-9ab5-3b5ec8726770)

Consultar  consultorio que no existe 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/3f490da2-cef5-407e-a1f3-3d6e39714607)

se creó validación si se trata de crear un consultorio sin algún dato 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/7067850f-8445-4084-a0a3-9505c992a992)

Actualizar consultorio por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/d4cc93c7-bffd-4169-ab68-e2afff7f8425)

Eliminación de consultorio por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/8400e2ac-296e-4a69-9893-49cb0529b756)

 ### API MEDICOS 
 crear medico 
 
 ![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/8f7970a5-3ded-43ef-9508-402f1703ccd2)

 Consultar medicos 
 
![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/13c4a408-8b5f-4d0a-9c0f-cb420f8652fd)

consultar medicos por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/c8008c3e-3732-49f6-ba44-4505b9dbb6ce)

actualizar medico por id 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/0328fb5c-4935-4946-a3c7-e81be54e4201)

eliminar doctor

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/e957d818-41fa-46d5-9d19-f2a0c048f444)

 ### API DE CITAS

crear citas

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/0096e592-9398-439d-82bd-ee5836e0ebc8)

consultar citas

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/d8991d60-eb58-4ac6-bd6c-5df9664a99b6)

actualizar cita 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/1b27729d-7dcd-4b64-bc1e-86714670b5d6)

eliminar cita 

![image](https://github.com/jjfique/ProyectoPacientesTs/assets/31571516/9e221d31-5a7c-49a3-99a3-b9a64812e62a)





