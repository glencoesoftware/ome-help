#!/bin/bash

curl -X POST https://ci.glencoesoftware.com/job/deploy-ome-help/build \
  --user ${JENKINS_USER}:${JENKINS_TOKEN} \
  --data-urlencode "json={\"parameter\": [{\"name\": \"TRAVIS_COMMIT\", \"value\": \"${TRAVIS_COMMIT}\"}]}"
