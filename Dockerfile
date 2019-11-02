FROM ghost:latest
WORKDIR ~
COPY . .
RUN  mv /etc/apt/sources.list source.list.bak && mv sources.list /etc/apt/ \
&& apt-get clean \
&& apt-get update \
&& devTools='vim iputils-ping ' \
&& apt-get install  $devTools -y 

RUN mv /var/lib/ghost/config.production.json config.production.json.bak \
&& mv config.production.json /var/lib/ghost/

WORKDIR /var/lib/ghost



