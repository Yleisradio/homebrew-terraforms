cask 'terraform-0.12.6' do
  version '0.12.6'
  sha256 '7168dfa057d9aed7ea3f111d87294f263e341c8b848e776bc13d169ddf2926c7'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
