FROM "ubuntu:16.04"

# TODO Run Dendro as a separate user instead of root.
# TODO If you figure out how to run the CMD as a "dendro" user let me know

######    CONSTANTS    ######
ENV HOME /home/root
ENV NVM_DIR $HOME/.nvm
# ENV COMMIT_HASH 9496630f9cd0fd434655ddf2b527cad3020d9df3
ENV DENDRO_GITHUB_URL https://github.com/feup-infolab/dendro.git
ENV DENDRO_INSTALL_DIR /dendro/dendro
######    CONSTANTS    ######

WORKDIR $HOME
RUN apt-get update

# Install preliminary dependencies
RUN apt-get -y -f install unzip devscripts autoconf automake libtool flex bison gperf gawk m4 make libssl-dev git imagemagick subversion zip --fix-missing

# Install text extraction tools
RUN apt-get -y -f install poppler-utils antiword unrtf tesseract-ocr

# Install Java Oracle SDK 8
RUN apt-get install -y software-properties-common
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Set Java Oracle SDK 8 as default Java
RUN apt install oracle-java8-set-default

# create installation dir and make dendro user its owner
RUN mkdir -p "$DENDRO_INSTALL_DIR"

# Clone dendro into install dir
RUN git clone "$DENDRO_GITHUB_URL" "$DENDRO_INSTALL_DIR"
RUN ls "$DENDRO_INSTALL_DIR"

# Copy dendro startup script
COPY ./files_for_dendro_container/dendro.sh "$DENDRO_INSTALL_DIR/start_dendro_with_docker.sh"
# Copy configuration files
COPY ./files_for_dendro_container/deployment_configs.json "$DENDRO_INSTALL_DIR/conf"
COPY ./files_for_dendro_container/active_deployment_config.json "$DENDRO_INSTALL_DIR/conf"

# Run Dendro Installation as Dendro user
WORKDIR $DENDRO_INSTALL_DIR
RUN "$DENDRO_INSTALL_DIR/conf/scripts/install.sh"

# Get contents of finalized dendro install directory (debug)
RUN ls -la "$DENDRO_INSTALL_DIR"

# Start Dendro
CMD [ "ls -la $DENDRO_INSTALL_DIR; $DENDRO_INSTALL_DIR/start_dendro_with_docker.sh" ]
