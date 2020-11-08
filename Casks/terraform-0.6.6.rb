cask 'terraform-0.6.6' do
  version '0.6.6'
  sha256 '43912f5d3eac34a73eaa182a78e13e8392ff4b81f053be4a61cd78db53c505a7'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
