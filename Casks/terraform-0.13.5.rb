cask 'terraform-0.13.5' do
  version '0.13.5'
  sha256 '03f7b636638c587c3b03a4b3d1d4cab77c872ad5f7e55405ddaf38dfb94e0e89'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
