cask 'terraform-0.9.2' do
  version '0.9.2'
  sha256 '33d9bbe1516a4085998c74d5a265aa0354d29a11eb56a21611dbcc806aec9c6f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
