cask 'terraform-0.6.11' do
  version '0.6.11'
  sha256 '9802b1d56576bea86e34fd3800e100eb043ab6de5a5fa40f7f05a0a44f364dd2'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
