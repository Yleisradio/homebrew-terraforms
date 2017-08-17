cask 'terraform-0.7.3' do
  version '0.7.3'
  sha256 'e0057e4f32e6490361611e3eb34e35f8b5314d861aa26fd9e89e1a7c4ab773bf'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
