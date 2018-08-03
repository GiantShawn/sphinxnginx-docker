FROM nginx:latest

LABEL maintainer="Shawn Li <liyehua@bigo.sg>"

COPY start.sh /start.sh
#COPY setupsphinx.in /tmp/
RUN apt-get update && apt-get install procps make -y &&  apt-get install python3 -y && apt-get install python3-sphinx -y
#RUN cat /tmp/setupsphinx.in | sphinx-quickstart

EXPOSE 80

CMD ["/start.sh"]
