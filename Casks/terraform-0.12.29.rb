cask 'terraform-0.12.29' do
  version '0.12.29'
  sha256 'fdcda98ff7b7e65832248f64ef6c2922e05036de25d40c5cdcd732c5117150aa'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
