cask 'terraform-0.13.3' do
  version '0.13.3'
  sha256 'ccbfd3af8732a47b6bd32c419e1a52e41eb8a39ff7437afffbef438b5c0f92c3'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
