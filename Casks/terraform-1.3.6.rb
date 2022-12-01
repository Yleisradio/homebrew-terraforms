cask "terraform-1.3.6" do
  version "1.3.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_amd64.zip"
    sha256 "5ab98e2d9f3b908fd6422a0562e829cc17eb055c8e242427d16d0a13506d401b"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_arm64.zip"
    sha256 "f1c20b2180c982bdda8384b1316209d20fc55def4f0354ead7a2a8e04c89f54e"
  end

  depends_on arch: [:x86_64, :arm64]
end
