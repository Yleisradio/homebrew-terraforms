cask "terraform-1.1.8" do
  version "1.1.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_amd64.zip"
    sha256 "48f1f1e04d0aa8f5f1a661de95e3c2b8fd8ab16b3d44015372aff7693d36c2cf"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.8/terraform_1.1.8_darwin_arm64.zip"
    sha256 "943e1948c4eae82cf8b490bb274939fe666252bbc146f098e7da65b23416264a"
  end

  depends_on arch: [:x86_64, :arm64]
end
