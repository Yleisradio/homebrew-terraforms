cask 'terraform-0.14.3' do
  version '0.14.3'
  sha256 'eda23614cd1dce1e96e7adf84f445c2783132c072fbd987f1f8858f34c361e41'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
