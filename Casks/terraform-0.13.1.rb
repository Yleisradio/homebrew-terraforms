cask 'terraform-0.13.1' do
  version '0.13.1'
  sha256 'fe5d1b6e22892c5dcc8b44d2a26ea1e29d90af6fcb1472f3881ca3c08c8a8084'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
