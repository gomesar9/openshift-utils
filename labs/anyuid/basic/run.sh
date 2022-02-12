#!/bin/bash

echo "# Setting up ANYUID lab"
for yml in $(find . -name '*.yaml'); do
    echo " |- Applying \"${yml}\"..."
    oc apply -f "$yml"
done
