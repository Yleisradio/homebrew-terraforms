cask 'terraform-0.13.4' do
  version '0.13.4'
  sha256 'd16d3094b0f9f56d7e05b4c09a923141a483f51e58613ae64507b0f7ba45bb34'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
