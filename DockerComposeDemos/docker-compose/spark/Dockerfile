FROM bitnami/spark:3.2.2
WORKDIR /opt/bitnami/spark
RUN curl https://jdbc.postgresql.org/download/postgresql-42.5.0.jar --output /opt/bitnami/spark/jars/postgresql-42.5.0.jar
CMD ["./sbin/start-thriftserver.sh" ,"--packages","com.datastax.spark:spark-cassandra-connector_2.12:3.2.0","--conf", "spark.cassandra.connection.host=cassandra","--conf", "spark.sql.extensions=com.datastax.spark.connector.CassandraSparkExtensions","--conf", "spark.sql.catalog.cassandra=com.datastax.spark.connector.datasource.CassandraCatalog"]
