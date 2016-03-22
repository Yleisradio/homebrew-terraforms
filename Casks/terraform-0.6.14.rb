cask 'terraform-0.6.14' do
  version '0.6.14'
  sha256 '9334f55a549d5cb3c583430be15e73b407bd7e115dc53db290381a482da17788'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
