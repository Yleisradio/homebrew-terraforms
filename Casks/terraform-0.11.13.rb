cask 'terraform-0.11.13' do
  version '0.11.13'
  sha256 'e9988443da39e5d81a5f7f1b6a5d97b25e2a1151d9be76cdc2e380df97e57856'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
