cask "terraform-1.4.0-beta1" do
  version "1.4.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta1/terraform_1.4.0-beta1_darwin_amd64.zip"
    sha256 "4737ae9826a6250e0f08e822bdd53600d1e56ae6736370fa7f18ac6e888ef164"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta1/terraform_1.4.0-beta1_darwin_arm64.zip"
    sha256 "f942574779d187e788aed2c9c2a9bf24287a955c739176d01216d16f63458a32"
  end

  depends_on arch: [:x86_64, :arm64]
end
