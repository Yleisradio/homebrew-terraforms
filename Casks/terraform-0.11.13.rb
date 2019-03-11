cask 'terraform-0.11.13' do
  version '0.11.13'
  sha256 '56b3b0313c41022e76e84f3dbf5045181f4fe3fc1005909a1cc97e6928bad35e'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
