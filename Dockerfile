# Сборка и подготовка артефактов
FROM alpine:latest AS builder
WORKDIR /app
COPY src/ .
# Сборка
RUN mkdir -p /app/dist && cp -r * /app/dist/

# Контейнер с Nginx
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=10s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost/health || exit 1
