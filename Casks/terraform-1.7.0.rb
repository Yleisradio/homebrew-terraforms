cask "terraform-1.7.0" do
  version "1.7.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0/terraform_1.7.0_darwin_amd64.zip"
    sha256 "621a2ef8d0ca4e5bb613632983b6b2cd53d542978117df779ac363422ce6802d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0/terraform_1.7.0_darwin_arm64.zip"
    sha256 "7c23ffbeba15c38ce547e62ba4ffbb2c3620cf5b38bf9fa8037cfa81544d1150"
  end

  depends_on arch: [:x86_64, :arm64]
end
