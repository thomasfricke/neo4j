FROM docker.io/library/neo4j

RUN cp /var/lib/neo4j/labs/* /var/lib/neo4j/plugins
RUN echo apoc.import.file.enabled=true > /var/lib/neo4j/conf/apoc.conf

