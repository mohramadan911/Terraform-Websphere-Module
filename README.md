# Terraform-Websphere-Module [experimental]
This project is a basic project to install and configure IBM WebSphere using terraform and wrap it using terragrunt , bitbucket CI/CD is used to automate and run the pipeline of provisioning it in different environments 


In this pipeline, I have created a step that runs after each pipeline step (dev, int, prod) to run the installation and configuration scripts. Using a script that detects the current pipeline by checking the value of the environment variable BITBUCKET_BRANCH and runs the corresponding installation and configuration scripts. This way you don't have to repeat the same steps in each pipeline.
