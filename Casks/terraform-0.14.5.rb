cask 'terraform-0.14.5' do
  version '0.14.5'
  sha256 '363d0e0c5c4cb4e69f5f2c7f64f9bf01ab73af0801665d577441521a24313a07'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
