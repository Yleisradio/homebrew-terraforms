cask 'terraform-0.6.16' do
  version '0.6.16'
  sha256 '23feb79263126877e6128a03c600cd626f6691a118a474694c5ad45cc5da9366'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
