# neo4j

Configure the container for apoc support

Pull the image

```bash
docker pull ghcr.io/thomasfricke/neo4j:sha-1162826
```

Run it

```bash
docker run --rm -d\
    --name neo4j \
    -p7474:7474 -p7687:7687 \
    -v $PWD/neo4j/data:/data \
    -v $PWD/neo4j/logs:/logs \
    -v $PWD/neo4j/import:/var/lib/neo4j/import \
    -v $PWD/neo4j/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/hello \
    ghcr.io/thomasfricke/neo4j:sha-1162826
```

Now you can use `apoc` command in cypher queries

```cypher
CALL apoc.load.json(<URL>)
YIELD value
RETURN value
```
