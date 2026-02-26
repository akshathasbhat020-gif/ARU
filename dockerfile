FROM python:3.10-slim

WORKDIR /app

COPY . /app/

RUN apt-get update && apt-get install -y build-essential \
    libg \
   libglib2.0-0

   RUN pip install --upgrade pip && pip install -r requirements.txt
   
   EXPOSE 80

   CMD ["python", "app"]