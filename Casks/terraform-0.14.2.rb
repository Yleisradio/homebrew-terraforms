cask 'terraform-0.14.2' do
  version '0.14.2'
  sha256 '31a7691f891f4e4c5d77b5eab9ecc86516df638a0b7cbde120c9e14bef68f7ac'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
