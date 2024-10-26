FROM python:3.9

WORKDIR /data

RUN pip install django==3.2

COPY . .

# set environment variables to avoid django warnings
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]