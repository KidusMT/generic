# README

1) build app image: `docker-compose build app`
2) Run containers: `docker-compose up -d db app`
3) Create database: `docker-compose exec app rails db:create`
4) Migrate: `docker-compose exec app rails db:migrate`
5) Run all specs: `docker-comopse exec app rails spec`
6) Run a specific spec: `docker-compose exec 