# Imagen base
FROM python:3.10-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Exponer puerto y ejecutar
EXPOSE 5000
CMD ["python", "app.py"]
