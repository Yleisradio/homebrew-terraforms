cask 'terraform-0.9.3' do
  version '0.9.3'
  sha256 '180afdeb14f4049f3374fe02b9143ad428ebd31dd89c6595775d7ba439d7fbf0'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
