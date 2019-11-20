cask 'terraform-0.12.16' do
  version '0.12.16'
  sha256 '02f893e326b25705aff2594d9f28a4a0c9d50f44a0e7e7129633f02c11a2e47d'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
