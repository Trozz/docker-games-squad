# Docker Squad
This container is for the FPS game Squad, it will update at runtime and will be rebuilt daily.

# Run it
Running the container is as simple as running the below, specifying the UID and GID will allow for correct ownership of files in the mountpoint.
```
docker run \
    -ti
    --name squad \
    -e PUID=<UID> -e PGID=<GID> \
    -v </path/to/steamapps>:/opt/steam/Steam/steamapps/common \
    -p 7787:7787 \
    -p 27165:27165 \
    -p 21114:21114 \
    trozz/games-squad
```
# Tags
This container has multiple tags.

 - trozz/games-squad:full
 this contains the full game within the container, thus is a couple of GB in size

 - trozz/games-squad:thin
 this does not contain the game but will install automatically at launch

 - trozz/games-squad:latest
 this is the same as thin
