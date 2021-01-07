cask 'terraform-0.14.4' do
  version '0.14.4'
  sha256 '948d4550b7cd0f9152741c4a5e4fe80167b1cbb7513f939ffef1d50f94c4fb0c'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
