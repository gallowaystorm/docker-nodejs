FROM gallowaystorm/alpine-base:latest

# Set to root to install packages
USER root

# Update packages 
RUN apk update --no-cache

# Install npm and nodejs
RUN apk add --update --no-cache nodejs nodejs-npm

# Check to see installed
RUN npm --version && \
    node --version

# Set user back to app
USER ${APP_USER}
