cask "terraform-1.0.7" do
  version "1.0.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_darwin_amd64.zip"
    sha256 "23b85d914465882b027d3819cc05cd114a1aaf39b550de742e81a99daa998183"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_darwin_arm64.zip"
    sha256 "d9062959f28ba0f934bfe2b6e0b021e0c01a48fa065102554ca103b8274e8e0c"
  end

  depends_on arch: [:x86_64, :arm64]
end
