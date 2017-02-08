cask 'terraform-0.8.6' do
  version '0.8.6'
  sha256 '0b80dedb16ab6583afcf66e9b03d3714fbfa44b827094420956d807b710e4fd6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
