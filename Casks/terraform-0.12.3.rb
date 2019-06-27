cask 'terraform-0.12.3' do
  version '0.12.3'
  sha256 'f0e09af8ce413ec9a949c00ea6645cd8169a03412e545a3375adf91c3ad8c7ad'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
