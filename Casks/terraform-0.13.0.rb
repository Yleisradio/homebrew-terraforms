cask 'terraform-0.13.0' do
  version '0.13.0'
  sha256 '080af0420732cd08941aa4c0d2b4693056b24366724faa11b107bf052f7de203'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
