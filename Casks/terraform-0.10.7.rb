cask 'terraform-0.10.7' do
  version '0.10.7'
  sha256 '60924d17e40be4b055629719a1f633736cca70c4506b8f7e32fa17e0d6e57477'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
