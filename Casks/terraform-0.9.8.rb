cask 'terraform-0.9.8' do
  version '0.9.8'
  sha256 'f2f4e12bcb6e8bbd8876194221fbb79860ad700926d47a42654a354d70b06022'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl
end
