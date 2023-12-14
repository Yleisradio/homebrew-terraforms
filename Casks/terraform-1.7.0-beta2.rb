cask "terraform-1.7.0-beta2" do
  version "1.7.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-beta2/terraform_1.7.0-beta2_darwin_amd64.zip"
    sha256 "7c09244a80dba64d5f62c75b6bb006be9e8b71f63a9c729e69cf8ae2b5ed64c2"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-beta2/terraform_1.7.0-beta2_darwin_arm64.zip"
    sha256 "4975da1056a0f5f41499b7f080bf8ceed5939a8be8d373a74fdf96e7c06e0d92"
  end

  depends_on arch: [:x86_64, :arm64]
end
