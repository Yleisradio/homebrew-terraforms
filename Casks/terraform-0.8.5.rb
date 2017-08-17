cask 'terraform-0.8.5' do
  version '0.8.5'
  sha256 '10253ac843b7a170844d629cbdbd2287bf687cdd3d2938e4ab9140d10534cf38'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
