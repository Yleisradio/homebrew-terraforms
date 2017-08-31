cask 'terraform-0.10.3' do
  version '0.10.3'
  sha256 '6d7c51b8b8eee81b07c6b594077e0af95be518ed88b312bd3989c37b2924c2e6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
