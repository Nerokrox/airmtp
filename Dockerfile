FROM frolvlad/alpine-python2

ENV CAMERA_IP 192.168.1.1

RUN mkdir /airmtp
ADD . /airmtp
RUN mkdir /airmtp/shared_dir

# output dir /airmtp/shared_dir

CMD ["python" ,"/airmtp/airmtp.py" ,"--ipaddress", "$CAMERA_IP", "--outputdir", "/airmtp/shared_dir"]  