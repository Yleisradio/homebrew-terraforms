cask 'terraform-0.7.6' do
  version '0.7.6'
  sha256 '5c315498c58700d5e0eeba205c1e07e5299d04dd0f7fb7e87e4c38a8c9903774'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
