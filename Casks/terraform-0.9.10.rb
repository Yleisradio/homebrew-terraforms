cask 'terraform-0.9.10' do
  version '0.9.10'
  sha256 '8d55db3e114a72ec2cefb2e928af485c10f61c2df8121847972f73ca301fe5c6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
