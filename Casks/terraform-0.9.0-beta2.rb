cask 'terraform-0.9.0-beta2' do
  version '0.9.0-beta2'
  sha256 'b102ba7481e1310d96e70f499c58de48a753a45496d093d63897a3bc432636c2'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
