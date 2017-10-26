cask 'terraform-0.10.8' do
  version '0.10.8'
  sha256 '3f05acdf0a9e04ba7e3bda18521feb0b310462dcce62c454854a40519b1695ed'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
