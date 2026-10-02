#!/bin/bash

# 1. Обновляем список пакетов и устанавливаем Git и Docker
sudo apt-get update
sudo apt-get install -y git docker.io docker-compose-plugin

# 2. Клонируем твой репозиторий в папку /opt/app
sudo git clone https://github.com/eldyear/shvirtd-example-python.git /opt/app

# 3. Переходим в папку проекта
cd /opt/app

# 4. Запускаем проект в контейнерах
sudo docker compose up -d --build