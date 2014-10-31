###
#
# A ubuntu based Mongodb image using the latest official release by default.
#
###
FROM ubuntu:14.04
MAINTAINER Kingsquare <docker@kingsquare.nl>

####
# Add mongo repo and install mongod
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
	echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list && \
	apt-get update && \
	apt-get install -y --no-install-recommends mongodb-org && \
	apt-get autoremove -yq --purge && \
	apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]