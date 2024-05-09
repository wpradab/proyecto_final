# Usa una imagen base de Python
FROM python:3.8-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos e instala las dependencias
COPY app.py

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto 5000 para que la aplicación sea accesible desde fuera del contenedor
EXPOSE 5000

# Define el comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["python", "app.py"]
