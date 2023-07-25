FROM python:3.10

ENV PYTHONBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 
    
WORKDIR /code

COPY requirements.txt .

RUN pip3 install -r requirements.txt 

COPY . /code


CMD [ "python", "manage.py", "runserver","0.0.0.0:8000" ]

EXPOSE 8000

