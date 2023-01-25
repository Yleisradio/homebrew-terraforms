cask "terraform-1.3.0-alpha20220608" do
  version "1.3.0-alpha20220608"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220608/terraform_1.3.0-alpha20220608_darwin_amd64.zip"
    sha256 "ea5c01a73114461aaa57b33f99dbbe0e76ad9fd767f4954b18edade86f5e41b6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220608/terraform_1.3.0-alpha20220608_darwin_arm64.zip"
    sha256 "f6972d9f59e48046e6711afbfaa78c0d62a5654572a26570968c88742cebf3a0"
  end

  depends_on arch: [:x86_64, :arm64]
end
