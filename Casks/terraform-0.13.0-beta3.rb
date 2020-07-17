cask 'terraform-0.13.0-beta3' do
  version '0.13.0-beta3'
  sha256 '8e49d45da847120ea1e162d0b3fcd6b322e8dff419c6cc5cb535a3041a650391'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
