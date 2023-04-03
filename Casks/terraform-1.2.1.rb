cask "terraform-1.2.1" do
  version "1.2.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_darwin_amd64.zip"
    sha256 "31c0fd4deb7c6a77c08d2fdf59c37950e6df7165088c004e1dd7f5e09fbf6307"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_darwin_arm64.zip"
    sha256 "70159b3e3eb49ee71193815943d9217c59203fd4ee8c6960aeded744094a2250"
  end

  depends_on arch: [:x86_64, :arm64]
end
