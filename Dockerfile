FROM alpine:edge
COPY . .
RUN apk add --no-cache bash x11vnc xvfb xterm ca-certificates fluxbox ffmpeg chromium geany python3 py3-pip supervisor; chmod +x noVNC/utils/novnc_proxy; chmod +x noVNC/utils/websockify/run; chmod +x supervisor.sh; chmod +x /conf.d/novnc_proxy.sh; chmod +x cr
CMD /supervisor.sh
