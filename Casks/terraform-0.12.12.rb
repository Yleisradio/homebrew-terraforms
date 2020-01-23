cask 'terraform-0.12.12' do
  version '0.12.12'
  sha256 '51507dedba7fcc2638c5c2c40206ec604155e2d3067a132b618f4e99ea9f1db9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
