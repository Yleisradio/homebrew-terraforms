cask 'terraform-0.12.11' do
  version '0.12.11'
  sha256 'e1ddcd5f40d3e9b2758d8bc4858117f5df94169fec16495dada96d3ab358ff34'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
