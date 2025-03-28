FROM python:3.9

# Establecer el directorio de trabajo en /app
WORKDIR /app

COPY requirements.txt .
# Instalar dependencias necesarias
RUN pip install -r requirements.txt

# Copiar los archivos de la aplicación al contenedor
COPY . .

# Comando por defecto al iniciar el contenedor
CMD ["python", "app.py"]