# Ontology-Based Knowledge Graph Application
![Python](https://img.shields.io/badge/Python-3.7-3776AB?logo=python&logoColor=white)
![GraphDB](https://img.shields.io/badge/GraphDB-8.7-F05032?logo=graphdb&logoColor=white)
![RDF](https://img.shields.io/badge/RDF-1.1-3776AB?logo=rdf4j&logoColor=white)
![SPARQL](https://img.shields.io/badge/SPARQL-E34F26?logo=rdf4j&logoColor=white)
![OWL](https://img.shields.io/badge/OWL-2-blue?logo=owl&logoColor=blue)
![SHACL](https://img.shields.io/badge/SHACL-E34F26?logo=shacl&logoColor=white)
![OOPS!](https://img.shields.io/badge/OOPS!-%E2%9C%94-blue?logo=oops-%E2%9C%94-8155ba&logoColor=white)
![OnTop](https://img.shields.io/badge/OnTop-3.0-3776AB?logo=ontop&logoColor=white)
![TopBraid SHACL API](https://img.shields.io/badge/TopBraid_SHACL_API-1.4.4-blue?logo=ontop&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15.2-blue?logo=postgresql&logoColor=white)
![Protégé](https://img.shields.io/badge/Prot%C3%A9g%C3%A9c-5.6.5-3776AB?logo=protege&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?logo=git&logoColor=white)

This project is a knowledge graph application designed to integrate and reason over food-related information using a domain-specific **ontology**, and advanced semantic techniques.

## Key Features
The system demonstrates the full lifecycle of semantic application development and ontology engineering:
- Harmonize heterogeneous food-related data using **semantic technologies**
- Reuse existing well-established ontologies to improve interoperability.
- Enhanced the core **OWL2** developed ontology using **Ontology Design Patterns**.
- Enforce semantic constraints using SHACL & ontology validation using **OOPS!**
- Support data integration using **SPARQL** and **OBDA (Ontology-Based Data Access)**.
- Enhanced interoperability with other semantic systems by aligning domain-specific ontologies using **LogMap**

## Life Cycle

```markdown
                                    +----------------------------+
                                    | Heterogeneous Food Sources |
                                    +-------------+--------------+
                                                  |
                                                  v
                                    +----------------------------+
                                    |    OBDA Mapping (Ontop)    |
                                    +-------------+--------------+
                                                  |
                                                  v
                                    +------------------------------+
                                    |   Core OWL2 Ontology         |         +----------------------------+
                                    |   - Design Patterns          | <-----> | Ontology Validation (OOPS) |
                                    |   - Reuse (BBC, GR, iContact)|         +----------------------------+
                                    +-------------+----------------+      
                                                  |
                                                  v
                                    +----------------------------+           +-----------------------+
                                    | Knowledge Graph (GraphDB)  |  <----->  |    SHACL Validation   |
                                    +-------------+--------------+           +-----------------------+
                                                  |
                                                  v
                                         +----------------+
                                         | SPARQL Queries |
                                         +----------------+
                                    
                                    Optional:
                                    +----------------------------+
                                    | Alignment (schema.org)     |
                                    |       via LogMap           |
                                    +----------------------------+
```

## Business Impact
- Enhance **data-driven decision-making** by ensuring high-quality, semantically validated data.
- **Reduce errors** in business intelligence systems caused by inconsistent or redundant data.
- Enable seamless integration of structured data into **knowledge-driven applications**.
