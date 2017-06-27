cask 'terraform-0.9.9' do
  version '0.9.9'
  sha256 '657d522fc08b6f6fba0c913c9d474a80b1c9c1c6e9a497445455a8ff22fd72b3'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
