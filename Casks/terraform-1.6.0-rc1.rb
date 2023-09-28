cask "terraform-1.6.0-rc1" do
  version "1.6.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-rc1/terraform_1.6.0-rc1_darwin_amd64.zip"
    sha256 "e5b33535abd89965cffedf07aa74a938228f10e4521f773cc3263ccb941df3ed"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-rc1/terraform_1.6.0-rc1_darwin_arm64.zip"
    sha256 "a0cc13513b61cf7a0034dc25596770fa9d69c9b79e488ac8f2e659b46b5f6ff3"
  end

  depends_on arch: [:x86_64, :arm64]
end
