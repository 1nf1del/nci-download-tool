FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget zip python git tar gzip python-pip python-yaml samtools

#Install GDC Data Client Transfer Tool from binary
RUN wget https://gdc.nci.nih.gov/files/public/file/gdc-client_v1.0.1_Ubuntu14.04_x64.zip
RUN unzip gdc-client_v1.0.1_Ubuntu14.04_x64.zip && cp gdc-client /usr/local/bin/

RUN pip install awscli
ADD nci-downloader /usr/local/bin/nci-downloader

ENV PATH $PATH:/usr/local/bin/

