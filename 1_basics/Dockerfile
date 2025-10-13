FROM ubuntu:latest
RUN apt-update && apt-upgrade
WORKDIR /
COPY ./g_django_app.sh .
RUN chmod 775 ./g_django_app.sh
CMD ./g_django_app.sh

