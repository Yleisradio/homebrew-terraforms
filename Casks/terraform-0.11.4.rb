cask 'terraform-0.11.4' do
  version '0.11.4'
  sha256 'c328b8d60840b96641f519deb85601cb1f2cce458c7bdb7786712471234ac0c5'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
