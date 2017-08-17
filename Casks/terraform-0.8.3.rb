cask 'terraform-0.8.3' do
  version '0.8.3'
  sha256 '84ecdd2adf61629a6bd4c1316df8f76290afad689630225d415666b422214a83'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
