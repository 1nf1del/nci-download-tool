FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl unzip

#Install GDC Data Client Transfer Tool from binary
RUN curl -L -O https://gdc.nci.nih.gov/files/public/file/gdc-client_v1.0.1_Ubuntu14.04_x64.zip && unzip gdc-client_v1.0.1_Ubuntu14.04_x64.zip && cp gdc-client /usr/local/bin/ && rm gdc-client_v1.0.1_Ubuntu14.04_x64.zip

ENV PATH $PATH:/usr/local/bin/

