FROM python:3.10
RUN useradd -m appuser
USER appuser
WORKDIR /app
COPY requirementx.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]
