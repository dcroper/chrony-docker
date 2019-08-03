# chrony-docker

A docker container for [chrony](https://chrony.tuxfamily.org) based on alpine linux.

## Run

    docker run -it --rm --name chrony -p123:123/udp --cap-add SYS_TIME -v chrony:/var/lib/chrony dcroper/chrony-docker:latest

The container creates the symlink `/etc/chrony/chrony.conf -> /var/lib/chrony/chrony.conf` so that the config file can exist in the same volume as the drift file and other persisted files.

A default `chrony.conf` file to run chrony as a local NTP server is provided.
