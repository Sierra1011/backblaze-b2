FROM python:3.10-slim
RUN apt-get update

ENV AUTHORIZATION_FAIL_MAX_RETRIES=3

RUN pip install b2==3.4.0

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]