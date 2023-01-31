FROM fithwum/debian-base:bullseye
LABEL maintainer "fithwum"

ENV SERVER_PORT=1194

# URL's for files
ARG INSTALL_SCRIPT=https://raw.githubusercontent.com/fithwum/openvpn-as/master/openvpn-as/files/Install_Script.sh

# Install java-17 & Dependencies.
RUN apt-get -y update \
	&& apt-get -y --fix-broken install \
	&& apt-get install -y software-properties-common \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	&& update-ca-certificates -f;

# Folder creation.
RUN mkdir -p /OpenVPN-as /OpenVPN-as-temp \
	&& chmod 777 -R /OpenVPN-as /OpenVPN-as-temp \
	&& chown 99:100 -R /OpenVPN-as /OpenVPN-as-temp
ADD "${INSTALL_SCRIPT}" /OpenVPN-as-temp
RUN chmod +x /OpenVPN-as-temp/Install_Script.sh

# Directory where data is stored
VOLUME /OpenVPN-as

# 25565 Default.
EXPOSE 1194/udp

# Run command
CMD [ "/bin/bash", "./OpenVPN-as-temp/Install_Script.sh" ]
