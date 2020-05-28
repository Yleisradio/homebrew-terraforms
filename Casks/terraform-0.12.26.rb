cask 'terraform-0.12.26' do
  version '0.12.26'
  sha256 '79fb293324012bc981006e1527267987666dd80cff80b11f93fb0ab2e321c450'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
