FROM python:3.9-slim

WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.1

RUN apt-get update
RUN apt-get install -y apache2-utils

COPY make-data.py generate-votes.sh ./

RUN chmod +x generate-votes.sh

RUN python make-data.py

EXPOSE 5001

COPY . .

CMD ["sh", "./generate-votes.sh"]