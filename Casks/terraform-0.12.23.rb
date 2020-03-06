cask 'terraform-0.12.23' do
  version '0.12.23'
  sha256 'ca1a0bc58b4e482d0bdcaee95d002f4901094935fd4b184f57563a5c34fd18d9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
