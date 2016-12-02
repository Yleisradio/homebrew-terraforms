cask 'terraform-0.8.0-rc2' do
  version '0.8.0-rc2'
  sha256 '37980a5cb36b7ef56084e779a07522d2ec26c42f86fa1e7e83f46875049690d9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
