cask 'terraform-0.11.0' do
  version '0.11.0'
  sha256 '0d5f7ffcfd34fe58ed25fe48650f1c9ac1d9e15983af43deaeffc6d0a88ba346'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
