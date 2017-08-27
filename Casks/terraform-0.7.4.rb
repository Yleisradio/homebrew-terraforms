cask 'terraform-0.7.4' do
  version '0.7.4'
  sha256 '21c8ecc161628ecab88f45eba6b5ca1fbf3eb897e8bc951b0fbac4c0ad77fb04'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
