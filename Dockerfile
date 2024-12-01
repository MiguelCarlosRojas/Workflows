# Usa una imagen base de Node.js (o la imagen adecuada para tu proyecto)
FROM node:16

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json (si los tienes)
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia todo el código fuente de la aplicación al contenedor
COPY . .

# Expone el puerto en el que la aplicación escucha (ajústalo según tu aplicación)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
