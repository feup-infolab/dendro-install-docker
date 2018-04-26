FROM tenforce/virtuoso:1.3.1-virtuoso7.2.4

ENV INSTALL_DIR /dendro-install

RUN apt-get update && apt-get install -y -qq git
RUN git clone https://github.com/feup-infolab/dendro-install $INSTALL_DIR
RUN chmod +x /virtuoso.sh
RUN /virtuoso.sh & sleep 15; /usr/local/virtuoso-opensource/bin/isql-v 1111 -U dba -P dba < $INSTALL_DIR/scripts/SQLCommands/interactive_sql_commands.sql
RUN apt-get update && apt-get remove -y -qq git
