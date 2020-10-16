cask 'terraform-0.14.0-beta1' do
  version '0.14.0-beta1'
  sha256 '10c5c0969438f973a25cffcae3e567697822459da3ff177d707f3ae2d5100962'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
