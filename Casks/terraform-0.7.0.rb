cask 'terraform-0.7.0' do
  version '0.7.0'
  sha256 '4720e4b2878b3b0d3d781f68ff363707ed42fe39cb89e2e34c6c11f8e0f76b04'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
