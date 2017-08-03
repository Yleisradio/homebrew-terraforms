cask 'terraform-0.8.4' do
  version '0.8.4'
  sha256 '79e94dfaf439fdbba2a2fe03dd7c90b24efa699b6661155aa9329df43e68ba51'

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
end
