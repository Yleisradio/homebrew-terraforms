cask 'terraform-0.12.1' do
  version '0.12.1'
  sha256 '3c5b0aa8f3acf477a5d5ae997174bd16d49bb0789915b5a40a6deb39692a5c8d'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
