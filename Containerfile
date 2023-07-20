FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flpt create-db
RUN flpt populate-db
RUN flpt add-user -u admin -p admin
EXPOSE 5000
CMD ["flpt", "run"]
