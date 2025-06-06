# Kittygram on Yandex Cloud

Проект по развёртыванию инфраструктуры и деплою приложения Kittygram в Яндекс Облаке с помощью Terraform и CI/CD (GitHub Actions).

---


## Что выполлнено в рамках проекта:

- Автоматизирован процесс создания инфраструктуры в Яндекс Облаке.
- Настроен удалённый бэкенд для хранения состояния Terraform в S3.
- Автоматизирован процесс развертывания приложения Kittygram на виртуальной машине.
- Добавлены автотесты и Telegram-уведомления.

---

## Инфраструктура

- 1 ВМ в Yandex Cloud (ru-central1-a)
- VPC + Subnet + NAT
- Security Group с разрешением 22/80/443
- PostgreSQL как Docker-контейнер
- Приложение Kittygram (Docker-контейнеры backend, frontend, gateway, postgres)
- S3-бакет для хранения `tfstate`



## Запуск проекта
## Подготовка

1. Аккаунт в Yandex Cloud с доступом к API
2. Настроенный платежный аккаунт
3. Создан сервисный аккаунт аккаунт
4. Создано S3 хранилище для состояний terraform

5. Необходимые секреты в GitHub

CLOUD_ID                # идентификатор вашего облака
FOLDER_ID               # ID каталога в облаке
ACCESS_KEY              # Ключ доступа для сервисного аккаунта
SECRET_KEY
YC_KEY_JSON             # JSON-ключ сервисного аккаунта Yandex Cloud, закодированный в base64
DOCKER_USERNAME         # логин от Docker Hub
DOCKER_PASSWORD         # пароль от Docker Hub
SSH_KEY                 # приватный ssh-ключ
SSH_KEY_PUB             # публичный ssh-ключ
TELEGRAM_TO             # id пользователя
TELEGRAM_TOKEN          # id бота

6. Запуск автоматического деплоя:
    git push origin main
