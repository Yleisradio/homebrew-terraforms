cask 'terraform-0.15.0-beta1' do
  version '0.15.0-beta1'
  sha256 'bc4a4665af56c8e8bcf62788224f8fb91eeb7fe3b064ebcf3f3ab7bc5a90ea43'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
