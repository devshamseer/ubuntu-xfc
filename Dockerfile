# Use the base image
FROM lscr.io/linuxserver/webtop:latest

# Set environment variables
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC
ENV SUBFOLDER=/
ENV TITLE=Webtop

# Expose ports
EXPOSE 3000 3001

# Set the working directory
WORKDIR /config

# Copy local data to container
COPY /home/user/data /config

# Optional: Copy other necessary files if needed

# Optional: Uncomment the following lines if you need additional configurations
# COPY /path/to/configurations /config/configurations
# VOLUME /var/run/docker.sock
# --device /dev/dri:/dev/dri
# --shm-size="1gb"

# Set the restart policy
CMD ["--restart", "unless-stopped"]
