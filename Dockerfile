FROM debian:unstable-slim
ENV DEBIAN_FRONTEND=noninteractive
COPY . .
RUN apt update && apt install -y --no-install-recommends bash fluxbox net-tools supervisor x11vnc xvfb xterm chromium geany procps git; apt clean && apt autoremove -y; rm -rf /var/lib/apt/lists/*; chmod +x noVNC/utils/novnc_proxy; chmod +x noVNC/utils/websockify/run; chmod +x supervisor.sh; chmod +x cr
CMD /supervisor.sh
