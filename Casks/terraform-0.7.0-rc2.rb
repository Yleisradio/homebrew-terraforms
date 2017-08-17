cask 'terraform-0.7.0-rc2' do
  version '0.7.0-rc2'
  sha256 'ade28697e57abd2b8a5dd35144bfbef946e2503362c3613340cff8ff7a99365b'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
