FROM alpine:edge
COPY . .
RUN apk add --no-cache bash tigervnc xvfb xdm xterm ca-certificates fluxbox ffmpeg chromium geany python3 py3-pip; chmod +x noVNC/utils/novnc_proxy; chmod +x run.sh; chmod +x cr
CMD /run.sh
