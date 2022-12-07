FROM ubuntu:latest
ENV  VERSION=1.2.0
#RUN  apt-get update &&\
#     apt install python3 -y &&\
#     apt install vim -y &&\
#     apt install zip -y &&\
#     apt install unzip -y

# copy python file to /tmp
COPY ./zip_job.py /tmp

# print architecture
RUN uname -m

# print os type
RUN cat /etc/os-release

# validate whether /tmp/zip_job.py exists
ENTRYPOINT ls /tmp/zip_job.py || exit 1
