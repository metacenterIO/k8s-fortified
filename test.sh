kubectl get pods \
--all-namespaces \
--field-selector metadata.namespace!=kube-system,metadata.namespace!=kube-public,metadata.namespace!=kube-node-lease \
-o json \
| jq -e --arg hp 1024 -r '[.items[] | .spec.containers[].ports[]?.hostPort // empty] | select( all( . < $hp)) | length > 0' && exit 1 || exit 0
