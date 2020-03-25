cask 'terraform-0.12.24' do
  version '0.12.24'
  sha256 '72482000a5e25c33e88e95d70208304acfd09bf855a7ede110da032089d13b4f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
