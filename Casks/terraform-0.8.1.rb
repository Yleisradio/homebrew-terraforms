cask 'terraform-0.8.1' do
  version '0.8.1'
  sha256 '275104513600bf50a28942131d928d2be405c75f9f36a9c722718500075856a1'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
