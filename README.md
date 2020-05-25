# Desafio Full Cycle - Docker

Projeto laravel versão 7.12.0, baseado em containers

Repositório Docker Hub - [Lavel](https://hub.docker.com/repository/docker/andersonscherer/laravel-app)

## Requistos
- Docker

## Executar projeto

Iniciar containers

```
docker-compose up -d
```

Acessar o container App para instalção do Laravel

```
$ docker exec -it app bash
```

Seguir os seguintes passos dentro do container

*Necessário gerar uma cópia do .env.example para .env*

Alterar parâmetros para:

- DB_HOST=db
- DB_PASSWORD=root
- REDIS_HOST=redis

```
bash-4.4#  composer install
bash-4.4# php artisan key:generate 
bash-4.4# php artisan migrate
```

Se tudo estiver certo o laravel deve estar disponível através da url http://localhost:8000
