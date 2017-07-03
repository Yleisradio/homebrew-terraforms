cask 'terraform-0.9.11' do
  version '0.9.11'
  sha256 '31ca22b9b8e840789314085ea3a9a666af261b17c0f86b68dfedf1eb50345cbd'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
