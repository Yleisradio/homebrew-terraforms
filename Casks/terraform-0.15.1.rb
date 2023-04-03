cask "terraform-0.15.1" do
  version "0.15.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.1/terraform_0.15.1_darwin_amd64.zip"
    sha256 "7f457dd1268ad616b9f832c4b731456676a860a3ecf4b2751957a0e7cf38924d"
  end

  depends_on arch: [:x86_64]
end
