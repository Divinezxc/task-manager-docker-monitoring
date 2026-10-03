FROM nginx:alpine

# Копируем конфигурацию Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копируем наш HTML-файл напрямую в папочку Nginx
COPY index.html /usr/share/nginx/html/index.html
