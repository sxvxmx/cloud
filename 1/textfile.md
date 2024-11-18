### Команды:
#### step1: Запуск системы
docker compose up -d --build
docker exec -it user /bin/bash
[user0]:
    psql -h host.docker.internal -p 5435 -U postgres  (pass: xxx)
    [postgres]:
        \c life_quality
        SELECT * FROM countries;
        INSERT INTO countries (name, life_expectancy, gdp_per_capita, happiness_index) VALUES ('Russia', 100, 99999, 10);
        \q
    exit
#### step2: Проверка базы данных на перезапуск контейнера 
docker stop postgresy
docker start postgresy
docker exec -it user /bin/bash
[user0]:
    psql -h host.docker.internal -p 5435 -U postgres 
     [postgres]:
        \o /tmp/data.txt
        \c life_quality
        SELECT * FROM countries; 
        \o
        \q
    cat /tmp/data.txt 
    exit

