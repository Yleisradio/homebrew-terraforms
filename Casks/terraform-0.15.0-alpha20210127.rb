cask 'terraform-0.15.0-alpha20210127' do
  version '0.15.0-alpha20210127'
  sha256 '5053459451746b22df24fb42c4f767e247827c7bf1aa425e8636d5cec54ec28c'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
