cask 'terraform-0.11.12-beta1' do
  version '0.11.12-beta1'
  sha256 '8c1f4f975bf4bba6725e6e1cbc69c4a7764a3fb6dc6aebf2e718456eed6405a9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
