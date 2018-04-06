cask 'terraform-0.11.6' do
  version '0.11.6'
  sha256 'edbdde7ca769a5c7ca1c048bd5729b1f70d556b4ee61287dff5057660bc1f64d'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
