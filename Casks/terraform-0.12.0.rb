cask 'terraform-0.12.0' do
  version '0.12.0'
  sha256 '9dbee9dea660ea64352f8ddf2539e60d1c414210e9c4a29c8585926fef366be1'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
