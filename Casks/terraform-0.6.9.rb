cask 'terraform-0.6.9' do
  version '0.6.9'
  sha256 '9cf892c073a9fce0e9f136162f82c5b2d373c32cc2c5bd5c5eb16631262fad89'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
