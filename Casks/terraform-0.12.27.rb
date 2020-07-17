cask 'terraform-0.12.27' do
  version '0.12.27'
  sha256 '3941e8b3f81257e54997cd717cec5dfbf3a254643a47e3ac8c687f26c0b8814f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
