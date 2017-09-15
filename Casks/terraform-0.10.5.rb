cask 'terraform-0.10.5' do
  version '0.10.5'
  sha256 'd39ce30b7aa77834d3000173d95df476c0fcfea8114825d8276c38277d3a7436'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
