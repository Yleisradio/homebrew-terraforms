cask 'terraform-0.12.21' do
  version '0.12.21'
  sha256 'f89b620e59439fccc80950bbcbd37a069101cbef7029029a12227eee831e463f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
