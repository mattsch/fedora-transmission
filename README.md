# Fedora Transmision Docker Container

Docker container for [Transmission](http://www.transmissionbt.com/) using Fedora.

## Usage

Create with defaults:

```bash
docker create -v /path/to/config/dir:/config \
    -v /path/to/storage/dir:/storage \
    -v /etc/localtime:/etc/localtime:ro \
    -p 5050:5050 --name=transmission mattsch/fedora-transmission
```

Create with a custom uid/gid for the transmission daemon:

```bash
docker create -v /path/to/config/dir:/config \
    -v /path/to/storage/dir:/storage \
    -v /etc/localtime:/etc/localtime:ro \
    -e LUID=1234 -e LGID=1234 \
    -p 5050:5050 --name=transmission mattsch/fedora-transmission
```

