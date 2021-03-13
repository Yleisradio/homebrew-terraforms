cask "terraform-0.11.12" do
  version "0.11.12"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.12/terraform_0.11.12_darwin_amd64.zip"
    sha256 "316fa873b26463f3e015db11dba00eab1839338f930f1352dbab2d0bcd0828a5"
  end

  depends_on arch: [:x86_64]
end
