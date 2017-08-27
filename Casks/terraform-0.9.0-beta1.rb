cask 'terraform-0.9.0-beta1' do
  version '0.9.0-beta1'
  sha256 '7496efff0fe399f79967bc2dd0a03058d97c77648e6089a79cde86f6168b793c'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
