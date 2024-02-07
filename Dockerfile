FROM python:3.6-alpine


COPY . /app
CMD ["python", "/app/main.py"]
