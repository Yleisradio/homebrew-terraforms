cask "terraform-1.1.0-alpha20210908" do
  version "1.1.0-alpha20210908"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210908/terraform_1.1.0-alpha20210908_darwin_amd64.zip"
    sha256 "367b1f8da46936b9155d3351acc5e1bab4189d38cfe24f24182ec2c0350e8e4d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210908/terraform_1.1.0-alpha20210908_darwin_arm64.zip"
    sha256 "d9bbca900f4a09708766a31088947f47a0645d64f983b3fd039d2c2e920289c5"
  end

  depends_on arch: [:x86_64, :arm64]
end
