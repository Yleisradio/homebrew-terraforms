cask 'terraform-0.12.18' do
  version '0.12.18'
  sha256 'dd6983cfe0d0922de51e019a80db2a270e8a2636b9f05b49bf7dcbfe7bd90ea9'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
