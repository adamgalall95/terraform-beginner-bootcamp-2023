# Git commands
git add .
git commit -m "bla bala"
git push
git fetch
git stash save
git stash apply

# Terraform Beginner Bootcamp 2023
chmod u+x ./bin/install_aws_cli 
env | grep AWS_
aws sts get-caller-identity

# Terraform commands
terraform init
terraform plan
terraform apply --auto-approve
terraform destroy 

# Terraform Cloud Login
    # First Method
        1- Create and open the file manually using: open /home/gitpod/.terraform.d/credentials.tfrc.json
        2- Provide the token in this format:
            {
            "credentials": {
                "app.terraform.io": {
                    "token": "Token_here"
                }
            }
        }
    
    # Second method recommended
        1- Manually generate a token in terra cloud using: https://app.terraform.io/app/settings/tokens?source=terraform-login
            1.1- gp env TERRAFORM_CLOUD_TOEKN="terra_cloud_token"
            1.2- export TERRAFORM_CLOUD_TOEKN="terra_cloud_token"
            1.3- chmod u+x ./bin/generate_trfc_credentials
        2- Using a bash script and creds from first step 