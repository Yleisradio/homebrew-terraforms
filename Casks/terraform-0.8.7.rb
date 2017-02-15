cask 'terraform-0.8.7' do
  version '0.8.7'
  sha256 'ba53c7424bec5db7c01e0a5178ba5e295eb13669fb04fdae41576098baf88b75'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
