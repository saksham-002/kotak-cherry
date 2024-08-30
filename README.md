# kotak-cherry test assignment #

This repo contains 2 small backend applications in different languages.
It contains all the screenshots of configuration of VPC, SG, Bastion, EKS, Manifest of microservices and Jenkins Job.
Path: ./Images
We have added few files in code repo too, i.e., Dockerfile, docker-build.sh and Makefile.

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

#### Creating VPC ####

The vpc where we will be deploying application, both public and private subnets.

cd kotak-cherry/infra/networking
terraform init
terraform plan
terraform apply

#### Installing AWS CLI ####

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

#### Installing kubectl ####

https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

#### Updating Kube Config ####

aws eks update-kubeconfig --region ap-south-1 --name kotak-cherry-eks

#### Creating ecr repo ####

Use particular appname for the repo, eg: rails-api || express-api

#### k8s-manifest

path: k8s-manifest

Apply the above file to create all the resources like deployment, service, hpa, ingress.
command: kubectl apply -f <file-name>

#### CI/CD setup ####

#### Build Job url [http://3.7.76.161:8080/job/Build/job/rails-api/job/main/] and [http://3.7.76.161:8080/job/Build/job/express-api/job/main/] ####
 
Used multibranch pipeline config to enable multiple branches to build the application with it's dependencies and create a docker tag, hence, pushes into private ECR..


#### Deploy job url: [http://3.7.76.161:8080/job/Deploy/job/prod-deploy/configure] ####
 
It is a multi deploy app job.
Select the NAMESPACE,APP_NAME,DEPLOY_TAG for deployment
Used groovy script for fetching build tag from ECR.

#### HOST ENTRIES FOR ACCESSING APPLICATION ####

3.108.114.248 kotak-test.expressapi.com
13.232.235.121 kotak-test.expressapi.com

3.108.114.248 kotak-test.railsapi.com
13.232.235.121 kotak-test.railsapi.com


##### NOTE : Use terraform destory to remove all the resources if not in use #####

  
