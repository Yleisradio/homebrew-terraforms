cask 'terraform-0.6.12' do
  version '0.6.12'
  sha256 'eaa50e05a88ef83a9ba18a3768932f4d530ce1b710b29ae29992f94addac0bfb'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
