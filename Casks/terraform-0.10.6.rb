cask 'terraform-0.10.6' do
  version '0.10.6'
  sha256 'a37f190cfcac21fa2343ec7e3112137d27fb9286c9f5c128547c6221502442c9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
