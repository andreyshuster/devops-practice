# DEVOPS Practice

Repository used as playground for learning DevOps tools
It should include comments and documentation how to create working environment with CI and CD using AWS, Terraform, Ansible, and CircleCI

## Aws
    I use `botoenv` to export AWS credentials befor issuing other commands
    ```sh
    eval $(botoenv --profile development)
    ```
    
## Terraform
    ## Terraform used to create infrastructure. Keep all changes in state
    - Create EC2 instance with SSH access
    - Create S3 bucket with public access
  
## Ansible
