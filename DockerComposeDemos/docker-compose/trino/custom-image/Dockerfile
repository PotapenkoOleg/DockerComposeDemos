FROM trinodb/trino:403
WORKDIR /opt/trino-server/etc
##################################################
# Catalog Setup
##################################################
COPY catalog/cassandra.properties ./catalog/
COPY catalog/postgres.properties ./catalog/
##################################################
# Node setup
##################################################
COPY ./node.properties .
COPY ./config.properties .
##################################################
WORKDIR /opt/trino-server/bin/
