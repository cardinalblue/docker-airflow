FROM puckel/docker-airflow:1.10.2

USER root

RUN pip install apache-airflow[celery,crypto,gcp_api,password,postgres,redis,s3,ssh]

EXPOSE 8080 5555 8793

USER airflow

# We don't want to use the ENTRYPOINT provided by the parent image, so we override it.
ENTRYPOINT []
CMD ["airflow", "webserver"]
