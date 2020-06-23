cask 'terraform-0.13.0-beta2' do
  version '0.13.0-beta2'
  sha256 '4729fa267c5be7f1d0c19a85d36e2b4577f303866fc25403650acb4243c2021f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
