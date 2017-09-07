cask 'terraform-0.10.4' do
  version '0.10.4'
  sha256 '70885c572f7bc54361c77d4839303210579db5875636711f621f6763574c1237'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
