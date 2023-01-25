cask "terraform-0.12.27" do
  version "0.12.27"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.27/terraform_0.12.27_darwin_amd64.zip"
    sha256 "7bd1f1a45393d360db68d8338a40f56c1448c30c932353d5e26ffe5dbdefab50"
  end

  depends_on arch: [:x86_64]
end
