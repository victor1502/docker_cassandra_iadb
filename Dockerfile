FROM python:3.13.0

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Instalar dependencias necesarias
RUN pip install --no-cache-dir cassandra-driver flask

# Copiar los archivos de la aplicación al contenedor
COPY . /app

EXPOSE 9042

# Comando por defecto al iniciar el contenedor
CMD ["python", "app.py"]