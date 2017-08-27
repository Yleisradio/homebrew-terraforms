cask 'terraform-0.7.2' do
  version '0.7.2'
  sha256 '2a441124efd097007414545714927a9239980a5b0707384b0ee07badbae781cf'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
