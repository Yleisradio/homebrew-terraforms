cask 'terraform-0.6.10' do
  version '0.6.10'
  sha256 '9009582111ba938bd7e22767f533c712fb763dffa9f390b40b17f18742bfac59'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
