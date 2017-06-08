cask 'terraform-0.9.7' do
  version '0.9.7'
  sha256 'ece7ad727eac202b571c64018ec3d09b4d7693aea7033db81e239d96d11d48b9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
