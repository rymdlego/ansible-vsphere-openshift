# ansible-vsphere-openshift

Set up OpenShift in your vSphere environment by setting a few variables in an Ansible inventory.

The ansible roles will 
- generate the OpenShift install yaml
- download the correct version of **openshift-install**
- download and import any self-signed certificates from your vSphere environment
- execute **openshift-install** with the correct parameters
- deploy the gitops-operator and set up ArgoCD to sync with a git repo of your choice

To add a cluster, add it to the inventory and supply values as per the example in there.

Run the playbook: `ansible-playbook install-openshift.yml -l name_of_your_cluster`

(included in this repo is a Dockerfile to build a functional environment with all requirements to run the playbook)

All config files will be generated and placed in **./install/**

All throwaway things will be placed in **/tmp/**

