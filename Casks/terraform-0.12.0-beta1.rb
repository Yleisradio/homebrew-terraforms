cask 'terraform-0.12.0-beta1' do
  version '0.12.0-beta1'
  sha256 '2da57018c25ada511b7131d85257f534030eddf23b347663af4c4ca89d3d9220'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
