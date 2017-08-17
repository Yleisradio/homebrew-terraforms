cask 'terraform-0.7.11' do
  version '0.7.11'
  sha256 '69c8d2b07f04e9bf0beb4a333dd189d8616d22fe46692bdb5aef10493ac5e5c6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
