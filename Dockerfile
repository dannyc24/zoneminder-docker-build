FROM ubuntu
COPY bootstrap.sh /bootstrap.sh
RUN chmod u+x /bootstrap.sh ; apt update ; DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata software-properties-common ; add-apt-repository ppa:iconnor/zoneminder-1.36 ; apt update ; apt install -y zoneminder ; a2enmod rewrite ; a2enconf zoneminder
ENTRYPOINT /bootstrap.sh
