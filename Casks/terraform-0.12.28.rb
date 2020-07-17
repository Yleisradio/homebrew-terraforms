cask 'terraform-0.12.28' do
  version '0.12.28'
  sha256 '893050bcfc5e7445acd3a30f1500227b989b29cbd958ca64a8233589194a198d'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
