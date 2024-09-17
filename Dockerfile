# Dockerfile Task C
FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install flask
EXPOSE 5001
CMD ["python", "TaskB.py"]
