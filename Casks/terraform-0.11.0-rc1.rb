cask 'terraform-0.11.0-rc1' do
  version '0.11.0-rc1'
  sha256 'c7bbc03a40c089077e77befb3405c3fdf456f46e7b3bdafc50e48bfcc6f7b5a5'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
