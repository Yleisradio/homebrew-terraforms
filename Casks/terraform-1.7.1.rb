cask "terraform-1.7.1" do
  version "1.7.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.1/terraform_1.7.1_darwin_amd64.zip"
    sha256 "db05d272f5070eacab70fc14a091f5a9e6c734423794901d79ffd3c612933235"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.1/terraform_1.7.1_darwin_arm64.zip"
    sha256 "d4ee3a591d022fda26e1eb153a25e38ee4f0311720719c329ed38cf2ae8c14e5"
  end

  depends_on arch: [:x86_64, :arm64]
end
