cask "terraform-1.2.8" do
  version "1.2.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_darwin_amd64.zip"
    sha256 "efd3e21a9bb1cfa68303f8d119ea8970dbb616f5f99caa0fe21d796e0cd70252"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_darwin_arm64.zip"
    sha256 "2c83bfea9e1c202c449e91bee06a804afb45cb8ba64a73da48fb0f61df51b327"
  end

  depends_on arch: [:x86_64, :arm64]
end
