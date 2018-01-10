cask 'terraform-0.11.2' do
  version '0.11.2'
  sha256 'ff5c3c4bcfe84e011b96a2232704b2db196383ce5d4a32e47956c883ddc94bac'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
