cask "terraform-1.4.1" do
  version "1.4.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.1/terraform_1.4.1_darwin_amd64.zip"
    sha256 "96466364a7e66e3d456ecb6c85a63c83e124c004f8835fb8ea9b7bbb7542a9d0"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.1/terraform_1.4.1_darwin_arm64.zip"
    sha256 "61f76e130b97c8a9017d8aaff15d252af29117e35ea1a0fc30bcaab7ceafce73"
  end

  depends_on arch: [:x86_64, :arm64]
end
