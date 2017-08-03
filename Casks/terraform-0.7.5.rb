cask 'terraform-0.7.5' do
  version '0.7.5'
  sha256 '87cae476176b2f4416e5e0eb6c46ff218dd62201c31d3a3dfc16c08849d01b03'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
