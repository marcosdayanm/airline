# Generalmente se pueden ver otros Dockerfiles similares para basar el nuestro en ese otro

# Acá se le dice a Docker que use Python3
FROM python:3

# Ésto es una dirección dentro del container, por convención se va a copiar todo ahí y se va a establecer como wl directorio de trabajo
COPY . /usr/src/app

# Es como si hiciéramos cd en la terminal de nuestra compu
WORKDIR /usr/src/app

# Se instalan los paquetes de requirements.txt
RUN pip install -r requirements.txt

# Comandos para correr el servidor
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]



