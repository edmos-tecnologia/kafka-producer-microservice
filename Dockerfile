FROM python:3.6-alpine

ENV TOPICO=meu-topico
ENV HOST=0.0.0.0
ENV PORTA=9092
ENV SLACK=http://webhook.site/5c263fde-be87-4b97-8583-c4c7d537587c
ENV CANAL=lab-produtor
#exemplo: ENV CANAL=lab-testes

ADD . /code
WORKDIR /code
RUN pip3 install -r requirements.txt
EXPOSE 5001
CMD ["python", "server.py"]
