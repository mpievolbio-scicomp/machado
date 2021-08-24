#! /bin/sh

ro() {
    wget -nv https://raw.githubusercontent.com/oborel/obo-relations/master/ro.obo -O /tmp/ro.obo && \
    echo "Downloaded relation ontology to /tmp/ro.obo"
}

so() {
    wget -nv https://raw.githubusercontent.com/The-Sequence-Ontology/SO-Ontologies/master/Ontology_Files/so.obo && \
    echo "Download sequence ontology to /tmp/so.obo"
}

go() {
    wget -nv http://current.geneontology.org/ontology/go.obo && \
    echo "Download gene ontology to /tmp/go.obo"
}

all() {
    so
    ro
    go
}

"$*"
