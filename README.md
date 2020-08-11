# Remote Projects Box

This repository is used to house a set of projects which can be pulled to a compute instance and developed remotely.

## Principles

* **Desposable**: although there will be some setup required for a given compute box, it should ultimately be desposable. Persistance and storage shouldn't be assumed.
* **Platform independent**: GCP, AWS, Azure - doesn't matter.
* **Data lives elsewhere**: Buckets, local, open, etc.
* **Living documentation**: it can be scrappy, but it should be there.
* **Mostly Vanilla**:
  - Python3
  - pip3
  - git
  - Jupyter
  - VS Code
  - id_rsa authentication

## Vagrant

If developing on a Vagrant box, vagrant up will provision a machine and run [bootstrap.sh](bootstrap.sh). After running vagrant up, run `vagrant ssh-config` to get an entry for ssh-config files, which can be used to configure VS Code remote development.

## Cloud Box

A bare bionic64 box can be provisioned using [bootstrap.sh](bootstrap.sh) in the same way, and after can be set up as a remote ssh target in VS Code by entering.

### Google Cloud Platform

Download and install [gcloud][gcloud], and do the initial setup admin (telling google not to take all of your data, signing in etc). From here you can run `gcloud compute ssh-config` which will add an entry to _~/.ssh/config_ with the requisite keys etc.



[gcloud]: https://cloud.google.com/sdk/docs/quickstart-macos