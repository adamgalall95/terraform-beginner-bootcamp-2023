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
1- Manually generate a token in terra cloud
2- Create and open the file manually using: open /home/gitpod/.terraform.d/credentials.tfrc.json
3- Provide the token in this format:
    {
    "credentials": {
        "app.terraform.io": {
            "token": "Token_here"
        }
    }
}