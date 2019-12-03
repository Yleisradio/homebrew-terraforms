cask 'terraform-0.12.17' do
  version '0.12.17'
  sha256 'b0ab66e77bac3abcd8b36afa5e567ab4fef103fc21c4a223c954c4ea60f5d244'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
