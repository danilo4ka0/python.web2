# Використовуйте базовий образ Python
FROM python:3.12-slim

# Встановіть робочий каталог всередині контейнера
WORKDIR /app

# Скопіюйте файл requirements.txt у робочий каталог
COPY requirements.txt .

# Встановіть залежності
RUN pip install --no-cache-dir -r requirements.txt

# Скопіюйте усі файли проекту в робочий каталог
COPY . .

# Вкажіть команду запуску застосунку
CMD ["python", "task2.py"]


