cask 'terraform-0.12.14' do
  version '0.12.14'
  sha256 '2a4538ccf212865cb2c275dc079926f409b3809cb589638f560d5ab389babe00'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
