cask 'terraform-0.10.0-rc1' do
  version '0.10.0-rc1'
  sha256 'cb8b8c7abc291467bd432cbadb993b6972538c0d438cd6933d29c5c0702574d2'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
