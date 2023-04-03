cask "terraform-1.0.6" do
  version "1.0.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_darwin_amd64.zip"
    sha256 "5ac4f41d5e28f31817927f2c5766c5d9b98b68d7b342e25b22d053f9ecd5a9f1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_darwin_arm64.zip"
    sha256 "613020f90a6a5d0b98ebeb4e7cdc4b392aa06ce738fbb700159a465cd27dcbfa"
  end

  depends_on arch: [:x86_64, :arm64]
end
