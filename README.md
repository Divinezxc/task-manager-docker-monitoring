# 📋 СПО: Панель управления задачами & DevOps-инфраструктура

[![Build and Push Docker Image](https://github.com/Divinezxc/-1-/actions/workflows/deploy.yml/badge.svg)](https://github.com/Divinezxc/-1-/actions)
[![Docker Image](https://img.shields.io/badge/GHCR-Docker%20Image-blue)](https://github.com/Divinezxc/-1-/pkgs/container/-1-%2Fweb-app)

Учебный проект по дисциплине **Системное программное обеспечение (СПО)**. Представляет собой веб-приложение для управления задачами с настроенным CI/CD-пайплайном, контейнеризацией на базе Docker и интеграцией мониторинга ресурсов и сервисов.

---

## 🚀 Основные возможности

### 🌐 Веб-приложение
- **Интерфейс:** Тёмная стилизованная панель управления задачами с адаптивным дизайном.
- **Функционал:** Добавление, фильтрация (Все / Активные / Выполненные), отметка выполнения и удаление задач.
- **Хранение данных:** Сохранение состояния задач в `localStorage` браузера.
- **Демо-версия (GitHub Pages):** [https://Divinezxc.github.io/-1-/](https://Divinezxc.github.io/-1-/)

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
├── Dockerfile              # Инструкция сборки образa Nginx
├── docker-compose.yml      # Файл развертывания полного мультиконтейнерного стека
├── index.html              # Исходный код веб-приложения (HTML + CSS + JS)
├── nginx.conf              # Веб-конфигурация сервера Nginx
├── prometheus.yml          # Конфигурация сбора метрик Prometheus
└── README.md               # Документация проекта
