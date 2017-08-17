cask 'terraform-0.7.0-rc1' do
  version '0.7.0-rc1'
  sha256 '04cb5d3fdb500ac83a2002006b4331a9e5db92c22b8b4971731c66a9fb8906ee'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
