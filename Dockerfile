#Deriving the latest base image
FROM python:latest


#Labels as key value pair
LABEL Maintainer="cromer"

RUN mkdir /data

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /data
WORKDIR /data

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]