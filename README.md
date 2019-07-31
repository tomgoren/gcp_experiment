# gcp_experiment

## Overview

An experiment in GCP and Terraform.

## Getting Started

The following steps are required to get up and running:

- Create a GCP project
- Create a service account in the project with sufficient permissions
- Fetch and store credentials for the service account in a JSON file
- Enable API access for the project
- Enable GKE resources for the project

## Layout

Resources are organized thematically based in the following files:

- `admin.tf` :: The Admin VM
- `firewall.tf` :: The firewall rules:
    - Allow incoming traffic on 22 only to the Admin VM from the world
    - Allow traffic between the Admin VM and the GKE nodes on the internal network
- `gke.tf` :: The GKE cluster and node pool
- `provider.tf` :: The GCP provider configuration
- `variables.tf` :: Variables
- `vpc.tf` :: The VPC and subnet configuration
