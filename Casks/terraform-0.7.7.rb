cask 'terraform-0.7.7' do
  version '0.7.7'
  sha256 'eb6255c4c14c61458ea4598a0e3176695c296e9f1650ad56a24a1cb75d8fef35'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
