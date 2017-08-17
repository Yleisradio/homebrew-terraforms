cask 'terraform-0.8.0-beta2' do
  version '0.8.0-beta2'
  sha256 'd64cd70bb0446b29f4efa40512a2fe6fc7b2f7923d3a4e862ccf9345ae473e24'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
