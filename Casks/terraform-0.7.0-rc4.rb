cask 'terraform-0.7.0-rc4' do
  version '0.7.0-rc4'
  sha256 '53d83150f333f3debde969d4cc8219772efe24d62812174ec4be86c64d7862d2'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
