cask 'terraform-0.12.13' do
  version '0.12.13'
  sha256 '744dfa3c4f566cabddf2fa6b3b19fab06d512f3c654c09906e8acaaaa2388cfb'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
