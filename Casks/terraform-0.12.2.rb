cask 'terraform-0.12.2' do
  version '0.12.2'
  sha256 'f0cc23bc6ec1a5adc4043108ff5c79c2bddcdc70b056bd207defca1ae386d477'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
