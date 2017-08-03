cask 'terraform-0.8.0-rc1' do
  version '0.8.0-rc1'
  sha256 '8b2284c1b4b61044771731000d781786432c149f918040bd698f5c9781e76772'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
