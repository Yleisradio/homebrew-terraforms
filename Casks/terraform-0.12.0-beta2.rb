cask 'terraform-0.12.0-beta2' do
  version '0.12.0-beta2'
  sha256 '6be99d150329e55ae636e40500e96a6243a6a00d74126eef9fdb47f17a1070d7'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
