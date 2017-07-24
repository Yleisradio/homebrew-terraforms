cask 'terraform-0.10.0-beta2' do
  version '0.10.0-beta2'
  sha256 '6138b4177e392e759bebc378cfe3a8dbbab6eae43214269464a005597aed85c6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
