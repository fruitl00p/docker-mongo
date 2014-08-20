docker-mongo
============

A simple mongo docker defintion for running mongodb

Running
===

    docker run \
        -d \
        -v /data/mongodb:/data/db \
        gekkie/docker-mongo \
        --nojournal \
        --quiet \
        --nohttpinterface \
        --noprealloc \
        --smallfiles \
        --dbpath /data/db

Configuration
===
You could even inject the configuration into the image in order to have a more personal touch. The above command will use a simple external host-directory for persistant storage and work as a development box.
