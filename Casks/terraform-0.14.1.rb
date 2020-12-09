cask 'terraform-0.14.1' do
  version '0.14.1'
  sha256 '3077741547eaa8885aa0f8fb9ed160b6f069a55c8e8f908a316416a13c4407ca'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
