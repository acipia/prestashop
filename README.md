# Prestashop
Docker compose full environment for Prestashop

## prerequisites
- docker environment - only tested on Linux but should work on MacOS and WSL


## clone repository
```
git clone https://github.com/acipia/prestashop.git
```

### prepare config
Create a ".env" file with secrets
```
cp config.env.example .env
```

## create and launch containers
```
$ docker-compose up
[+] Running 3/3
 ⠿ Container prestashop-adminer-1  Running                                                                                                                                                            0.0s
 ⠿ Container prestashop-db-1       Healthy                                                                                                                                                            2.6s
 ⠿ Container prestashop-ps-1       Started  
```

## access to prestashop
Point your browser to https://localhost:8443/

## install Prestashop
You can run the install through web browser or CLI, like this :
```
docker exec -ti prestashop-ps-1 install.sh
...
```

## access to database with adminer
Point your browser to http://localhost:9090/
Use the credentials you gave in .env file
