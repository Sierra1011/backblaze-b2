FROM python:3.10-slim
RUN apt-get update
RUN pip install --upgrade pip

ENV AUTHORIZATION_FAIL_MAX_RETRIES=3

ARG VERSION
RUN pip install b2==$VERSION

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]