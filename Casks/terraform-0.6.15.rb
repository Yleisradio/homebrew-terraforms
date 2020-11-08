cask 'terraform-0.6.15' do
  version '0.6.15'
  sha256 '9cb305ac00b85e2575da3c71504f3fdd3f7ef61f35457af999c7b88802143311'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
