cask 'terraform-0.8.8' do
  version '0.8.8'
  sha256 '55ab547539e68c9375c144062460457fcfdb3f5b9f412d3bb162f73298602d78'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
