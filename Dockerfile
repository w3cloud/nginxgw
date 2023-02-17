FROM ubuntu:22.04
RUN apt -y update 
RUN apt -y install nginx
EXPOSE 80:80
EXPOSE 443:443
RUN apt -y install curl
WORKDIR /root
RUN apt -y install python3 python3-venv libaugeas0
RUN python3 -m venv /opt/certbot/
RUN  /opt/certbot/bin/pip install --upgrade pip
RUN /opt/certbot/bin/pip install certbot certbot-nginx
RUN ln -s /opt/certbot/bin/certbot /usr/bin/certbot
RUN mkdir /etc/w3cloud
WORKDIR /etc/w3cloud
COPY ./transfer/httpdef.conf /etc/w3cloud
COPY ./transfer/cb.sh /etc/w3cloud
RUN chmod +x /etc/w3cloud/cb.sh

CMD ["nginx", "-g", "daemon off;"]
