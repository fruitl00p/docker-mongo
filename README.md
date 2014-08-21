# docker-mongo

A simple mongo docker defintion for running mongod (2.6+)

# Running

    docker run \
        -d \
        -v /data/mongodb:/data/db \
        gekkie/docker-mongo \
        --nojournal \
        --quiet \
        --noprealloc \
        --smallfiles

# Configuration
You could even inject the configuration into the image in order to have a more personal touch. The above command will use a simple external host-directory for persistant storage and work as a development box.


# Changelog
All notable changes:

## 0.0.2 - 2014-08-21

### Removed
- removed deprecated or default options from the commandline (since we're running 2.6+)
  - nohttpinterface is now by default
  -	the dbpath is /data/db by default