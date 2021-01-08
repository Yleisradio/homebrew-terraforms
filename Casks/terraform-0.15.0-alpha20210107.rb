cask 'terraform-0.15.0-alpha20210107' do
  version '0.15.0-alpha20210107'
  sha256 '91d1c9424968c0efbc9ac5958e14bfe103981c885da1ace12114288884b8c855'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
