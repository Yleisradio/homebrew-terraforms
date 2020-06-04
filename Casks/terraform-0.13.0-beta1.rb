cask 'terraform-0.13.0-beta1' do
  version '0.13.0-beta1'
  sha256 'dfdc8ef005df19d7ec0fcb5f151e51b144233ca425c39dabf94c037e80780b05'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
