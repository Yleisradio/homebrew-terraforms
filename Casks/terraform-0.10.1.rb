cask 'terraform-0.10.1' do
  version '0.10.1'
  sha256 '5aae5125140b6cb39532360bd725fd33a9224b8358140291ff1d34a086dd646b'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
