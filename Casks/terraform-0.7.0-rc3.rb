cask 'terraform-0.7.0-rc3' do
  version '0.7.0-rc3'
  sha256 '2d34cf930f7ea7c983b3778645a00ad81612911b831525a438528b493b0e37b1'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
