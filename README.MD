# Basic setup
In order to run this, you should have:
```sh
pip install virtualenv
```
```sh
python -m virtualenv venv
```

## Running the db
### Linux
```sh
docker run -dit \
  --name geoterms \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_USER=app \
  -e POSTGRES_DB=geoterms \
  -p 54323:5432 \
  postgres
```
### Windows
1. Run Docker Desktop
2. Run in the powershell
```
docker run -dit  --name geoterms   -e POSTGRES_PASSWORD=password   -e POSTGRES_USER=app   -e POSTGRES_DB=geoterms   -p 54323:5432   postgres
```


## Running the backend
### Linux
#### Create a virtual environment and add dependencies
```shell
python -m virtualenv venv;
source venv/bin/activate;
pip install -r requirements.txt;
```

#### Running the server
```shell
DJANGO_DEBUG=True DJANGO_TESTING=True python manage.py runserver 8001
```
### Windows
#### Create a virtual environment and add dependencies
```
python -m virtualenv venv
cd venv
cd Scripts
cd ..
cd ..
activate
pip install -r requirements.txt
```

#### Running the server
1. Set up the environment variables
   1. DJANGO_DEBUG=True
   2. DJANGO_TESTING=True
2. Execute
```shell
python manage.py runserver 8001
```

#### Applying migrations
1. Set up the environment variables
   1. DJANGO_DEBUG=True
   2. DJANGO_TESTING=True
2. Execute
```shell
python manage.py migrate
```

## Administration
1. Run the database
2. Run the server
3. Create a supuser
```shell
python manage.py createsuperuser
```
4. Enter http://127.0.0.1:8001/admin using the login and the password of the superuser