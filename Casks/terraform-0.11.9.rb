cask 'terraform-0.11.9' do
  version '0.11.9'
  sha256 '1b5a0c916f547c396959b8c303f3bfa7a2e936c78f002bf42e532c9254fd6d75'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
