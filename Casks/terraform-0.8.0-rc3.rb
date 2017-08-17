cask 'terraform-0.8.0-rc3' do
  version '0.8.0-rc3'
  sha256 '2fb9519066cc4fddb530c457977b7bdaab4c1bc5cb471036dfb326e6c08a540f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
