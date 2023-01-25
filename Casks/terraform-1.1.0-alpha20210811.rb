cask "terraform-1.1.0-alpha20210811" do
  version "1.1.0-alpha20210811"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210811/terraform_1.1.0-alpha20210811_darwin_amd64.zip"
    sha256 "5382962ea627602a94018289ae3485eea66ee659b148854c39c6b3254e5b8c41"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210811/terraform_1.1.0-alpha20210811_darwin_arm64.zip"
    sha256 "cc415c7810cd7f0f3865261afbdc162b77ef330bd8e9c6df27ac9a4cd1405b5a"
  end

  depends_on arch: [:x86_64, :arm64]
end
