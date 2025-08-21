# UCHIRU API
Uchi_ru - проект с API реализацией
Rails 8.0.2, Postgresql, Docker

# Как запустить
Запустить проект локально: docker compose up

# Запросы через Postman
* POST /students - Регистрация нового студента (в заголовках ответа появится x-auth-token и значение)
* DELETE /students/{user_id} - Удалить студента (в заголовоки запроса нужно ввести x-auth-token с его значением)
* GET /schools/{school_id}/classrooms/{classroom_id}/students - Вывести список студентов класса
* GET /schools/{school_id}/classrooms - Вывести список классов школы
