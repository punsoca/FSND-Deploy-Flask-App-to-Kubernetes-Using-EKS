FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT [ "gunicorn" , "-b", "0.0.0.0:8080", "main:APP"]
