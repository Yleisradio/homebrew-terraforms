cask 'terraform-0.14.0-rc1' do
  version '0.14.0-rc1'
  sha256 '6fcb3898b33887fdd3c8f14cf92783a52bdab224164db972e65301f30baac3df'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
