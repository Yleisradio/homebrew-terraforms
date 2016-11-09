cask 'terraform-0.7.10' do
  version '0.7.10'
  sha256 'e65095c09cd94d60f0a6bc470ad29b249051448533344722755cc617bdd277a4'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
