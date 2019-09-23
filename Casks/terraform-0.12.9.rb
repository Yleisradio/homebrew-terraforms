cask 'terraform-0.12.9' do
  version '0.12.9'
  sha256 'dbb3c0ffb37a5e659e05b8c223a717f89ffda7761d23eaf596c31b9745557288'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
