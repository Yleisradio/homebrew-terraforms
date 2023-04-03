cask "terraform-1.2.0-alpha20220413" do
  version "1.2.0-alpha20220413"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha20220413/terraform_1.2.0-alpha20220413_darwin_amd64.zip"
    sha256 "70fd32df5851a9a5d132119e0328708a4643109402813301fc2254fb6a7dd210"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha20220413/terraform_1.2.0-alpha20220413_darwin_arm64.zip"
    sha256 "1d4dbcc179c20d44a8fa7c0fec2f93078ccce94ad642bb1204041af2a0e53c76"
  end

  depends_on arch: [:x86_64, :arm64]
end
