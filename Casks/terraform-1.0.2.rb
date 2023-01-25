cask "terraform-1.0.2" do
  version "1.0.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_darwin_amd64.zip"
    sha256 "1c173ba93d8d6f00b3bd8908c0a1de6fd3a04c2ba4d6ff5f3361e0b56d139154"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.2/terraform_1.0.2_darwin_arm64.zip"
    sha256 "a5d03ea237f838d87396a8a53f42bc490687c8aa1283b830a0604e1e1bd54d31"
  end

  depends_on arch: [:x86_64, :arm64]
end
