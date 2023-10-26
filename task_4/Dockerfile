FROM python:3.8-alpine
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY application/requirements.txt requirements.txt
RUN pip --no-cache-dir install -r requirements.txt
COPY application .
CMD ["flask", "run"]

