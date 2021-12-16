# format the tf files
terraform fmt

# initialize terraform Azure modules
terraform init

# validate the template
terraform validate

# plan and save the infra changes into tfplan file
terraform plan -out tfplan

# save the tfplan file in json format
terraform show -json tfplan >> tfplan.json

# apply the infra changes
terraform apply tfplan

# delete the infra
terraform destroy

# cleanup files
rm terraform.tfstate
rm terraform.tfstate.backup
rm tfplan
rm tfplan.json
rm -r .terraform/
rm test_private_key.pem