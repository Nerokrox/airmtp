FROM frolvlad/alpine-python2

ENV CAMERA_IP 192.168.1.1

RUN mkdir /airmtp
ADD . /airmtp

CMD ["python" ,"/airmtp/airmtp.py" ,"--ipaddress", "$CAMERA_IP"]  