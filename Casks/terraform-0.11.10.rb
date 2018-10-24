cask 'terraform-0.11.10' do
  version '0.11.10'
  sha256 'cb5ae1fa5bed45d81d79d427cd1dd84ed7c04f712c72b420003e28f522a77a78'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
