cask 'terraform-0.8.0-beta1' do
  version '0.8.0-beta1'
  sha256 '002b38431546f259fb89ed93e33fb7fe4371e616071deea74e81112d2a22c96e'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
