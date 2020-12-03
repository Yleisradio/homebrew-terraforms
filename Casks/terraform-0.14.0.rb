cask 'terraform-0.14.0' do
  version '0.14.0'
  sha256 'e728f9c5f64b9a7507f7038ad243743b4bcad0057fe7cc83021eb825cc2b6b9c'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
