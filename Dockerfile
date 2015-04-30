FROM registry.gocurb.internal:80/ansible

RUN mkdir /opt/curbd-config
COPY . /opt/curbd-config
WORKDIR /opt/curbd-config
RUN pip3 install -r requirements.txt
ENTRYPOINT ["curbd"]
