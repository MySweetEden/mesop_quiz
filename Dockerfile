FROM python:3.12.1

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

WORKDIR /app
COPY main.py .
CMD gunicorn --bind :8080 main:me
