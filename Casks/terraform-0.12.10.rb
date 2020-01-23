cask 'terraform-0.12.10' do
  version '0.12.10'
  sha256 'd97db2217c6050926eedf517b7b0427b1b5f1bda989742cfd33d8fe56c95bb05'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
