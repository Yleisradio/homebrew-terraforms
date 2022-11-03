cask "terraform-1.3.4" do
  version "1.3.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_darwin_amd64.zip"
    sha256 "03e0d7f629f28e2ea31ec2c69408b500f00eac674c613f7f1097536dcfa2cf6c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.4/terraform_1.3.4_darwin_arm64.zip"
    sha256 "7b4401edd8de50cda97d76b051c3a4b1882fa5aa8e867d4c4c2770e4c3b0056e"
  end

  depends_on arch: [:x86_64, :arm64]
end
