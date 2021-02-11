cask 'terraform-0.15.0-alpha20210210' do
  version '0.15.0-alpha20210210'
  sha256 '8585395617e78abe64cde98aec5495856f812d42ade11b3c9a6d50f5c76e9f06'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
