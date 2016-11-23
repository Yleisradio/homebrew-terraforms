cask 'terraform-0.7.12' do
  version '0.7.12'
  sha256 'bfd79badf239509b09c5f036bd5cb1d688297644f26ffaf39d89c1abf9a2936d'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
