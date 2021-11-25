#!/bin/bash
# login and create project
oc login -u developer -p developer
oc new-project keycloak

# start the first pod with keycloak
oc process -f keycloak.yaml -p KEYCLOAK_USER=admin -p KEYCLOAK_PASSWORD=admin -p NAMESPACE=keycloak | oc create -f -




echo "KEYCLOAK_URL=https://$(oc get route keycloak --template='{{ .spec.host }}')/auth"

