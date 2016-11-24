cask 'terraform-0.7.13' do
  version '0.7.13'
  sha256 'c1e004ad2bff4e92edb13cf32a18b67b5178fc3597a844beeda09cc4f9c30b65'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
