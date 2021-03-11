cask 'terraform-0.14.8' do
  version '0.14.8'
  sha256 '30115a2ee5f61178527089d8e5da20053927b364b08dc7aee6894a162ccbd793'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
