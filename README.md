## Kubernetes DISA/STIG Compliance

**In development**

Core Contributors: [Andrew Bond](https://github.com/aabond) and [Michael Ward](https://github.com/mward29)

`k8s-fortified` is a test suite for Kubernetes compliance with DISA Security Technical Implementation Guide (STIG).

A full list of STIGs for Kubernetes can be found at [Cyber Tracker Live](https://cyber.trackr.live/stig/Kubernetes_STIG/1/0).
Their work has been a boon to this project.

Currently built and tested on Ubuntu.\
Many STIGs are path and manifest name specific to the host.

**Requirements:**
  - Ansible v2.9+
  - export KUBECONFIG=<path_to_kubeconfig>

### Tags:
```
no tags = run all
namespace               # create the "compliance" namespace in a k8s cluster
cleanup                 # delete "compliance" namespace
report                  # create report
STIG_NAME               # Ex. "CNTR-K8-000150"
```

### Examples:
```
ansible-playbook check-kubernetes-stig-compliance.yml
ansible-playbook check-kubernetes-stig-compliance.yml --tags "report"
ansible-playbook check-kubernetes-stig-compliance.yml --tags "CNTR-K8-000150"
```


### Future:
  - Configure vars by OS for easy selection.
  - Automate test generation: the bulk of tests were written manually. We would like to automate this to reduce maintenance.
