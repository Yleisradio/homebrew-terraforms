cask "terraform-1.7.4" do
  version "1.7.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_darwin_amd64.zip"
    sha256 "fcf35c8b1d3f46fb84f688312ef5f829081d2d56c10444b9f6e290e21e68871c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_darwin_arm64.zip"
    sha256 "3f25268a5d7677cc89d39a505362979acfb02f19ddb965d7ec0b33a6d9e64075"
  end

  depends_on arch: [:x86_64, :arm64]
end
