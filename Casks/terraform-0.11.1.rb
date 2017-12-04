cask 'terraform-0.11.1' do
  version '0.11.1'
  sha256 'f5e04d3886e9a427490d1aa857a61b5a87d08dc26fb8637e3eaa72b30562c330'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
