cask 'terraform-0.9.1' do
  version '0.9.1'
  sha256 '4140c52917da91a276db34f01e5efc27d07b6e1deeede4137625fccf7bfabb83'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
