cask "terraform-1.0.4" do
  version "1.0.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_amd64.zip"
    sha256 "0d2083b1a812572eef068dbfd60ffbfa10f843434bec5f7e82c5f7a778761fa1"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_arm64.zip"
    sha256 "8942347acdf0e5499366c6ee4fc1da7a4b4c24f9d80113a12e8b72619786b7eb"
  end

  depends_on arch: [:x86_64, :arm64]
end
