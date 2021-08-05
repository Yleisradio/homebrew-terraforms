cask "terraform-1.0.4" do
  version "1.0.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_amd64.zip"
    sha256 "cf7c7750c6380a12d6a4534c63844c803f14f5c5a8f71e32f7ad237ae81ae7a9"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_arm64.zip"
    sha256 "8b0a06a75fc6ae50cb75d2a3fb64d66fbe443bcda6d12d9e637cd3a701a29567"
  end

  depends_on arch: [:x86_64, :arm64]
end
