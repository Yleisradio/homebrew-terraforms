cask 'terraform-0.14.7' do
  version '0.14.7'
  sha256 '8a5ec04afcc9c2653bb927844eb76ad51e12bcaec0638103512d7b160dd530ea'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
