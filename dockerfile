FROM nginx:alpine

WORKDIR /app

COPY . /app/

RUN apt-get update && apt-get install -y \
    build-essential \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && pip install -r index.html

EXPOSE 80

CMD ["python", "app.py"]