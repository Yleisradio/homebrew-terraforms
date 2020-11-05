cask 'terraform-0.14.0-beta2' do
  version '0.14.0-beta2'
  sha256 'fc9c78035efa97c36b2abf590d562fe99ffb9d0fb3224c3b0fb6f80fff4d2754'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
