# 📋 СПО: Панель управления задачами & DevOps-инфраструктура

[![Build and Push Docker Image](https://github.com/Divinezxc/task-manager-docker-monitoring/actions/workflows/deploy.yml/badge.svg)](https://github.com/Divinezxc/task-manager-docker-monitoring/actions)
[![Docker Image](https://img.shields.io/badge/GHCR-Docker%20Image-blue)](https://github.com/Divinezxc/task-manager-docker-monitoring/pkgs/container/task-manager-docker-monitoring%2Fweb-app)

Учебный проект по дисциплине **Системное программное обеспечение (СПО)**. Представляет собой веб-приложение для управления задачами с настроенным CI/CD-пайплайном, контейнеризацией на базе Docker и интеграцией мониторинга ресурсов и сервисов.

---

## 🚀 Основные возможности

### 🌐 Веб-приложение
- **Интерфейс:** Тёмная стилизованная панель управления задачами с адаптивным дизайном.
- **Функционал:** Добавление, фильтрация (Все / Активные / Выполненные), отметка выполнения и удаление задач.
- **Хранение данных:** Сохранение состояния задач в `localStorage` браузера.
- **Демо-версия (GitHub Pages):** [https://Divinezxc.github.io/task-manager-docker-monitoring/](https://Divinezxc.github.io/task-manager-docker-monitoring/)
- [![Открыть сайт](https://img.shields.io/badge/🔗_Открыть_Task_Manager-GitHub_Pages-2ea44f?style=for-the-badge)](https://Divinezxc.github.io/task-manager-docker-monitoring/)

### 🛠 Инфраструктура и Контейнеризация
- **Веб-сервер:** Nginx Alpine (`Dockerfile`).
- **Оркестрация:** `docker-compose.yml` для многоконтейнерной сборки (Приложение + Prometheus + cAdvisor).
- **Сбор метрик (Prometheus):** Конфигурация `prometheus.yml` для отслеживания состояния сервисов и метрик.
- **Мониторинг ресурсов (cAdvisor):** Контроль потребления CPU, RAM и сетевой активности контейнеров.

### 🔄 CI/CD Пайплайн (.github/workflows/deploy.yml)
1. **Автоматическая сборка:** При каждом коммите в ветку `main` запускается рабочий процесс GitHub Actions.
2. **Публикация артефакта:** Docker-образ собирается и сохраняется в реестре **GitHub Container Registry (GHCR)**.

---

## 🛠 Структура проекта

```text
├── .github/
│   └── workflows/
│       └── deploy.yml       # Сценарий CI/CD для сборки и публикации Docker-образа
├── Dockerfile              # Инструкция сборки образа Nginx
├── docker-compose.yml      # Файл развертывания полного мультиконтейнерного стека
├── index.html              # Исходный код веб-приложения (HTML + CSS + JS)
├── nginx.conf              # Веб-конфигурация сервера Nginx
├── prometheus.yml          # Конфигурация сбора метрик Prometheus
└── README.md               # Документация проекта
```
### 💻 Локальный запуск (Инструкция для проверки)
Для запуска всего стека из исходных файлов выполните следующие команды в терминале:

```
# 1. Клонирование репозитория
git clone [https://github.com/Divinezxc/task-manager-docker-monitoring.git](https://github.com/Divinezxc/task-manager-docker-monitoring.git)

# 2. Переход в директорию проекта
cd task-manager-docker-monitoring

# 3. Запуск мультиконтейнерного стека
docker compose up -d --build
```
