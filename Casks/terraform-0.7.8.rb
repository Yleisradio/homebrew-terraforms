cask 'terraform-0.7.8' do
  version '0.7.8'
  sha256 '9daaec788ee0540d7b3a92f2dcf86656f3c567e2c267c64c03aa712901796470'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
