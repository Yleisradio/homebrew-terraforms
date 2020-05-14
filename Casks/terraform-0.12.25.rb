cask 'terraform-0.12.25' do
  version '0.12.25'
  sha256 '179fc99ccea5ed3617e9e7026dcfa59a5916ea91162afd7a2acd8350906a0d68'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
