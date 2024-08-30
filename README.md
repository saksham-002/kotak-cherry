# kotak-cherry test assignment #

This repo contains 2 small backend applications in different languages.

## Approach ##

Cloud Provider: AWS
IAC: terraform with s3 and dynamodb
Orchestration tool: AWS EKS with nginx-ingress
Containerization: Docker
CI/CD: Gitlab and Jenkins

#### Backend creation ####

This backend provisions a S3 bucket with versioning enabled and a DynamoDB table for managing Terraform state locks.

cd kotak-cherry/infra/backend
terraform init
terraform plan
terraform apply

