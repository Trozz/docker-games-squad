FROM trozz/steamcmd:latest
LABEL maintainer="docker@trozzy.net"

RUN /opt/steamcmd/steamcmd.sh \
      +login anonymous \
      +app_update 403240 validate \
      +quit

ENV PORT=7787 QUERYPORT=27165 RCONPORT=21114 FIXEDMAXPLAYERS=80 RANDOM=NONE
EXPOSE 7787 27165 21114

ENTRYPOINT /opt/steamcmd/steamcmd.sh +login anonymous +app_update 403240 +quit \
        && /opt/steamcmd/Steam/steamapps/common/Squad\ Dedicated\ Server/SquadServer.sh Port=$PORT QueryPort=$QUERYPORT RCONPORT=$RCONPORT FIXEDMAXPLAYERS=$FIXEDMAXPLAYERS RANDOM=$RANDOM
