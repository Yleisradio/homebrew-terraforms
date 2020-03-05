cask 'terraform-0.12.20' do
  version '0.12.20'
  sha256 '9e2ef974618402b70d4491f50701621e1a9f1cb32862592f0af3fee12324d378'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
