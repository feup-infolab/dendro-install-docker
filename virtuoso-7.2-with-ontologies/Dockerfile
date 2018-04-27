FROM tenforce/virtuoso:1.3.1-virtuoso7.2.4

ENV INSTALL_DIR /dendro-install

#install git, curl, and clone repository
RUN apt-get update && apt-get install -y -qq git curl
RUN git clone https://github.com/feup-infolab/dendro-install $INSTALL_DIR

# put there the script to wait for proper virtuoso bootup
COPY ./wait_for_virtuoso_to_boot.sh /wait_for_virtuoso_to_boot.sh

# make scripts executable
RUN chmod +x /wait_for_virtuoso_to_boot.sh
RUN chmod +x /virtuoso.sh

# load ontologies after service boots up...
RUN  /virtuoso.sh & /wait_for_virtuoso_to_boot.sh && /usr/local/virtuoso-opensource/bin/isql-v 1111 -U dba -P dba < $INSTALL_DIR/scripts/SQLCommands/interactive_sql_commands.sql

# remove dependencies because we don't need them anymore
RUN apt-get update && apt-get remove -y -qq --purge git curl 