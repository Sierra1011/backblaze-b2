FROM python:3.9-slim

ENV AUTHORIZATION_FAIL_MAX_RETRIES=3

ARG VERSION
RUN pip install b2==$VERSION

COPY src/entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]