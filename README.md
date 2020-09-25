# tf-module-2d-rke-demo
Terraform Module for preparing 3 nodes with Docker on AWS and generate an RKE configuration file

## What it does
This Terraform configuration creates a set of 3 nodes on AWS, based on the following module: https://github.com/rawmind0/tf-module-rancher-infra-aws
Then using the output of this module, it creates a configuration file for RKE (cluster.yml).

## Purpose
This repo is used to automate the pre-requisites for a demo of RKE
