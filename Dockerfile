FROM alpine:3.14

# Устанавливаем необходимые пакеты
RUN apk add --no-cache libc6-compat

# Копируем бинарный файл PocketBase
COPY pocketbase /pocketbase

# Создаем папку для данных
RUN mkdir /pb_data

# Устанавливаем рабочую директорию
WORKDIR /

# Открываем порт
EXPOSE 8080

# Команда запуска
CMD ["/pocketbase", "serve", "--http=0.0.0.0:8080", "--dir", "/pb_data"]
