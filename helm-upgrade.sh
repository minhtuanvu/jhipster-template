#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash helm-apply.sh
cs=csvc
suffix=helm
if [ -d "${cs}-${suffix}" ]; then
helm dep up ./${cs}-${suffix}
helm upgrade --install ${cs} ./${cs}-${suffix} --namespace jhipster-project
fi
helm dep up ./myapp-${suffix}
helm upgrade --install myapp ./myapp-${suffix} --namespace jhipster-project
helm dep up ./myapp1-${suffix}
helm upgrade --install myapp1 ./myapp1-${suffix} --namespace jhipster-project
helm dep up ./myapp2-${suffix}
helm upgrade --install myapp2 ./myapp2-${suffix} --namespace jhipster-project


