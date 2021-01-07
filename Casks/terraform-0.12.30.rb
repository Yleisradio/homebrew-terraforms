cask 'terraform-0.12.30' do
  version '0.12.30'
  sha256 'f107ed316be1b86a63df4e47a1fb8ab8c9ffdbbc606dcdf90043f91bdb21826d'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
