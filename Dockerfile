FROM python:latest

ENV PYTHONUNBUFFERED=1

WORKDIR /myapp

ADD . /myapp

COPY requirements.txt requirements.txt


RUN pip3 install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]