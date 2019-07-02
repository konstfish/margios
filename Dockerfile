FROM debian
COPY ./margios.sh /opt/scripts/margios.sh
COPY ./setup.sh /opt/scripts/setup.sh
#COPY ./hosts.txt /root/hosts.txt
COPY ./telegram-send.conf /etc/telegram-send.conf
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN python3 -m pip install telegram-send
#ENTRYPOINT ["/opt/scripts/setup.sh", "&&", "/opt/scripts/margios.sh"]
ENTRYPOINT ["/opt/scripts/margios.sh"]
