FROM python:3.6
EXPOSE 5656
COPY Email.py /
COPY requirements.txt /
RUN pip install -r requirements.txt
CMD python Email.py