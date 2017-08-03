cask 'terraform-0.6.7' do
  version '0.6.7'
  sha256 'fe54fa09af11a1375a2b85912fe416d494a52137be7c5b0b4aaae35d75b0d588'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
