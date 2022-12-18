#!/bin/bash

sudo su

cd ..

terraform init
terraform apply -auto-approve

# terraform apply -auto-approve