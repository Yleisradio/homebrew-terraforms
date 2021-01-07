cask 'terraform-0.13.6' do
  version '0.13.6'
  sha256 'cbb76aed9c01a8c0fbee4e3a10112ab7836440fa63d93414a1dc45ef59bc0ea2'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
