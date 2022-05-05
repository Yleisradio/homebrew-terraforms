cask "terraform-1.2.0-rc1" do
  version "1.2.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc1/terraform_1.2.0-rc1_darwin_amd64.zip"
    sha256 "bd2c639edb2f607b82ee6c72b0d8d9e51c201440f6b87ec25a5fd6b564d3a9a9"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc1/terraform_1.2.0-rc1_darwin_arm64.zip"
    sha256 "42c742deed49595dcf5a445892343462ff6292cb6bd70ce2bea9e1ee99c87cf9"
  end

  depends_on arch: [:x86_64, :arm64]
end
