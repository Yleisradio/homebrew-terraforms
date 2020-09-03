cask 'terraform-0.13.2' do
  version '0.13.2'
  sha256 '7af2f9c03e8687c87e7798178a2dac9a3061955eb19f0f69501475e017b8d8f6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
