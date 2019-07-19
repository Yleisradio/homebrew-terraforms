cask 'terraform-0.12.5' do
  version '0.12.5'
  sha256 'e0afcf6f6401e9eaab0be588b55b5226549253854acc1d0cde331b8ca54727e0'
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
