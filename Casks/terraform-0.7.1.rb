cask 'terraform-0.7.1' do
  version '0.7.1'
  sha256 'ab5e9ffe690f52ff13b8f095937119d67d3f0a07744be851657555236245dd98'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
