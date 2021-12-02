cask "terraform-1.1.0-rc1" do
  version "1.1.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-rc1/terraform_1.1.0-rc1_darwin_amd64.zip"
    sha256 "507605a8e3f73f006d5446ba656d69562184bf1631fb96dce3b0abde73dba635"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-rc1/terraform_1.1.0-rc1_darwin_arm64.zip"
    sha256 "ccae178553fba390a8a8c73e33285581f9bf510d56010ef7fbd67d067e1f92a8"
  end

  depends_on arch: [:x86_64, :arm64]
end
