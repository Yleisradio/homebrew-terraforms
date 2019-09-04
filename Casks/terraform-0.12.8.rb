cask 'terraform-0.12.8' do
  version '0.12.8'
  sha256 '2c2d9d435712f4be989738b7899917ced7c12ab05b8ddc14359ed4ddb1bc9375'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
