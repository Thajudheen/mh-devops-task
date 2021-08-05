# Your Dockerfile
FROM alpine:3.13.2

# Install thttpd
RUN apk add thttpd curl

# Create a non-root user to own the files and run our server
RUN adduser -D static
USER static
ARG PORT=4000
WORKDIR /opt/html
ENV prt=$port

# Copy the static website
# Use the .dockerignore file to control
COPY . .

# Run thttpd
CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "3000", "-d", "/opt/html", "-u", "static", "-l", "-", "-M", "60"]
EXPOSE $prt
