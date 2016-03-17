cask 'terraform-0.6.13' do
  version '0.6.13'
  sha256 '5f285ea0bf7f6bd704ef262330f88dc195ffa6ed118490d54961958dfe2dab24'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
