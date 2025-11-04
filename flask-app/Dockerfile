FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN useradd -m appuser
USER appuser
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app", "--workers", "3"]
