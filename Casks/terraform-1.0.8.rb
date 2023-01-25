cask "terraform-1.0.8" do
  version "1.0.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_darwin_amd64.zip"
    sha256 "1f36f77b59354ac398b8da33f903b1fa6d367dc7794a00f3b19729547bb8eca7"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_darwin_arm64.zip"
    sha256 "83dbd3b7119dbdc631e52664d8fcff2ae891fee851757ab3dc4df395c0eecf2d"
  end

  depends_on arch: [:x86_64, :arm64]
end
