cask "terraform-1.2.0" do
  version "1.2.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0/terraform_1.2.0_darwin_amd64.zip"
    sha256 "f608b1fee818988d89a16b7d1b6d22b37cc98892608c52c22661ca6cbfc3d216"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0/terraform_1.2.0_darwin_arm64.zip"
    sha256 "d4df7307bad8c13e443493c53898a7060f77d661bfdf06215b61b65621ed53e9"
  end

  depends_on arch: [:x86_64, :arm64]
end
