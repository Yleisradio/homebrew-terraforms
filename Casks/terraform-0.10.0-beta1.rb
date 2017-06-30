cask 'terraform-0.10.0-beta1' do
  version '0.10.0-beta1'
  sha256 '8170d52bd55bd80744aacd96ae8d87b39e29ed3d2d2853c9cb66ca62b5e295c6'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
