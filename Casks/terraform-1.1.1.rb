cask "terraform-1.1.1" do
  version "1.1.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_darwin_amd64.zip"
    sha256 "85fa7c90359c4e3358f78e58f35897b3e466d00c0d0648820830cac5a07609c3"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_darwin_arm64.zip"
    sha256 "9cd8faf29095c57e30f04f9ca5fa9105f6717b277c65061a46f74f22f0f5907e"
  end

  depends_on arch: [:x86_64, :arm64]
end
