# SAIKS_SS2020

## Step 1: Advanced Ontology Engineering

During building the ontology, vocabularies of three external ontologies that were needed for this domain were reused, which I present in the next:
* BBC food ontology: https://www.bbc.co.uk/ontologies/fo
* International Contact Ontology: http://ontology.eil.utoronto.ca/icontact.html#d4e383
* Good Relation Ontology: http://www.heppnetz.de/ontologies/goodrelations/v1.html

Furthermore, advanced modelling features offered by OWL2 and different Ontology Design Patterns are used during this step.

## Step 2: KG creation through OBDA
I used Ontop plugin in Protégé to create the mapping assertions between my ontology and relational database. I applied the mappings to materialize the resulting ontology-based data into a knowledge graph and stored it into the GraphDB graph-database.

Ontop Tutorial: https://github.com/ontop/ontop/wiki/Tutorials


## Step 3: Verification of Semantic Structure
# Ontology verification
Checking the quality of the ontology created at STEP 1 with the OOPS! ontology pitfall scanner (http://oops.linkeddata.es/) and improve it accordingly.
# KG verification
Writing SHACL rules with varying complexities for validating the knowledge graph resulting from STEP 2 and run these following the instructions in the
TopBraid SHACL engine2 (https://github.com/TopQuadrant/shacl) to get validation results.

## Step 4: Ontology Alignment

I decided to use the schema ontology (https://schema.org/docs/developers.html#defs) which includes the FoodEstablishment ontology as input for this alignment. However, all entities that have been matched with the metaFood ontology entities were from the FoodEstablishment ontology.

In addition, I used the web tool of LogMap (http://krrwebtools.cs.ox.ac.uk/logmap/) to find matchings between both ontologies.


## Final Report Overleaf:

https://www.overleaf.com/read/zctrgvmppxgt
