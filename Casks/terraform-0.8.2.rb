cask 'terraform-0.8.2' do
  version '0.8.2'
  sha256 '06bec1c06dbeb89ea7fdc2036be972372aa6847d3883786ab285386750a7ceb6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
