# Infrastructure as Code (IaC) Deployment Pipeline

This repository demonstrates managing infrastructure using HashiCorp **Terraform** and automating validation via **GitHub Actions** CI/CD. 

To allow for local testing without AWS/GCP credentials, this project uses the Docker provider to simulate spinning up a production web server with defined resource constraints (capacity planning).

## Architecture
- **Terraform (HCL)**: Defines the desired state of the infrastructure (NGINX web server, port mappings, memory limits).
- **GitHub Actions**: Continuous Integration pipeline that triggers on every push to validate the syntax and formatting of the Terraform files.
- **Docker**: Acts as the local infrastructure provider.

## How to run locally

1. Initialize Terraform (downloads the provider plugins):
```bash
terraform init