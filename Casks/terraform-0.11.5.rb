cask 'terraform-0.11.5' do
  version '0.11.5'
  sha256 '0af78baf9b1a249544cc0b17d6b7abb32cc513a554d1f7dcc85c873e2af93586'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
