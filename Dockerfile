FROM python:3.7-stretch

MAINTAINER SAADNI

ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
RUN ./microscanner NmQxY2I5ODVkZThm

COPY student_age.py /

RUN apt-get update -y && apt-get install python-dev python3-dev libsasl2-dev python-dev libldap2-dev -y

RUN pip install flask flask_httpauth flask_simpleldap python-dotenv

VOLUME ["/data","/data"]

EXPOSE 5000

COPY student_age.json /data/

CMD [ "python", "./student_age.py" ]
