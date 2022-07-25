#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash helm-apply.sh
cs=csvc
suffix=helm
kubectl apply -f namespace.yml
kubectl label namespace jhipster-project istio-injection=enabled
helmVersion=$(helm version --client | grep -E "v3\\.[0-9]{1,3}\\.[0-9]{1,3}" | wc -l)
if [ -d "${cs}-${suffix}" ]; then
  if [ $helmVersion -eq 1 ]; then
helm uninstall ${cs} 2>/dev/null
  else
helm delete --purge ${cs} 2>/dev/null
  fi
helm dep up ./${cs}-${suffix}
  if [ $helmVersion -eq 1 ]; then
helm install ${cs} ./${cs}-${suffix} --replace --namespace jhipster-project
  else
helm install --name ${cs} ./${cs}-${suffix} --replace --namespace jhipster-project
  fi
fi
  if [ $helmVersion -eq 1 ]; then
helm uninstall myapp 2>/dev/null
  else
helm delete --purge myapp 2>/dev/null
  fi
helm dep up ./myapp-${suffix}
  if [ $helmVersion -eq 1 ]; then
helm install myapp  ./myapp-${suffix} --replace --namespace jhipster-project
  else
helm install --name myapp  ./myapp-${suffix} --replace --namespace jhipster-project
  fi
  if [ $helmVersion -eq 1 ]; then
helm uninstall myapp1 2>/dev/null
  else
helm delete --purge myapp1 2>/dev/null
  fi
helm dep up ./myapp1-${suffix}
  if [ $helmVersion -eq 1 ]; then
helm install myapp1  ./myapp1-${suffix} --replace --namespace jhipster-project
  else
helm install --name myapp1  ./myapp1-${suffix} --replace --namespace jhipster-project
  fi
  if [ $helmVersion -eq 1 ]; then
helm uninstall myapp2 2>/dev/null
  else
helm delete --purge myapp2 2>/dev/null
  fi
helm dep up ./myapp2-${suffix}
  if [ $helmVersion -eq 1 ]; then
helm install myapp2  ./myapp2-${suffix} --replace --namespace jhipster-project
  else
helm install --name myapp2  ./myapp2-${suffix} --replace --namespace jhipster-project
  fi


