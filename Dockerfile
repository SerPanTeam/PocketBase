FROM debian:bullseye-slim

WORKDIR /app

# Скопируйте исполняемый файл PocketBase в рабочую директорию контейнера
COPY ./pocketbase /app/pocketbase

# Убедитесь, что файл имеет права на выполнение
RUN chmod +x /app/pocketbase

# Открываем порт 8090
EXPOSE 8090

# Запускаем PocketBase
CMD ["./pocketbase", "serve", "--http", "0.0.0.0:8090"]
