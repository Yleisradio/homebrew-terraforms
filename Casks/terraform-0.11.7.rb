cask 'terraform-0.11.7' do
  version '0.11.7'
  sha256 '6514a8fe5a344c5b8819c7f32745cd571f58092ffc9bbe9ea3639799b97ced5f'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
