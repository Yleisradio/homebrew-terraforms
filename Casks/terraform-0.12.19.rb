cask 'terraform-0.12.19' do
  version '0.12.19'
  sha256 '5238fe45d051cac90f0fc0701796c5244ef88218d0fe4eceec31cee43899a434'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
