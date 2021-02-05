cask 'terraform-0.14.6' do
  version '0.14.6'
  sha256 '126e1c9e058f12c247a194db5a9567e59ec755cbc0211cd5d58c8b7d37412b2c'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
