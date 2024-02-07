FROM python:3.10

COPY . /app
WORKDIR /app

RUN pip install Flask

EXPOSE 5000

CMD ["python", "app.py"]
