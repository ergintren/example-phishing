FROM python:3.6

EXPOSE 5000

RUN mkdir -p /src
COPY ./app /src/

WORKDIR /src


RUN pip install -r requirements.txt
CMD python Login.py