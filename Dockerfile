# Use the base image
FROM lscr.io/linuxserver/webtop:ubuntu-xfce

# Set environment variables
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC
ENV SUBFOLDER=/
ENV TITLE=Webtop

# Expose ports
EXPOSE 3000 3000

# Set the working directory
WORKDIR /config

# Disable the "no new privileges" flag
RUN echo "kernel.unprivileged_userns_clone=1" > /etc/sysctl.conf
# Override the "no new privileges" setting
USER root

# Optional: Uncomment the following lines if you need additional configurations
# COPY /path/to/configurations /config/configurations
# VOLUME /var/run/docker.sock
# --device /dev/dri:/dev/dri
# --shm-size="16gb"

# Set the restart policy
CMD ["--restart", "unless-stopped"]


