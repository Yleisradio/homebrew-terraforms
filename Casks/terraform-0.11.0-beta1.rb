cask 'terraform-0.11.0-beta1' do
  version '0.11.0-beta1'
  sha256 '5a8f9118bf99285aa41c60b150fb628ec6a1bc49293663fd2255eedc5934f379'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
