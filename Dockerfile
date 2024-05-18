FROM python:3.10

WORKDIR /app

RUN pip install Django django-widget-tweaks mysqlclient pandas scipy Pillow

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
