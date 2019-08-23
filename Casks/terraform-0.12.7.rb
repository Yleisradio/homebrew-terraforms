cask 'terraform-0.12.7' do
  version '0.12.7'
  sha256 '5cb59cdc4a8c4ebdfc0b8715936110e707d869c59603d27020e33b2be2e50f21'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
