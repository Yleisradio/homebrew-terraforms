cask 'terraform-0.12.15' do
  version '0.12.15'
  sha256 'c1ec56b36e8395a454b7d0ba421aa42c54d2f91c913893447d20aecf1437623f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
