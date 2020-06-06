# DEVOPS Practice

Repository used as playground for learning DevOps tools
It should include comments and documentation how to create working environment with CI and CD using AWS, Terraform, Ansible, and CircleCI

## Aws
I use `botoenv` to export AWS credentials befor issuing other commands

```sh
eval $(botoenv --profile development)
```
    
## Terraform
### Terraform used to create infrastructure. Keep all changes in state
- Create EC2 instance with SSH access. Default Amazon Linux user is `ec2-user`
- Create S3 bucket with public access
- Configure TF backend, keep state in S3 bucket
  
## Ansible
Right now I want to run ansible commands with explicit parameters

```
 ANSIBLE_CONFIG=./ansible.cfg ansible all -m ping -i hosts --key-file ~/.ssh/<key-file>.pem
```
