cask "terraform-1.3.1" do
  version "1.3.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_darwin_amd64.zip"
    sha256 "5f5967e12e75a3ca1720be3eeba8232b4ba8b42d2d9e9f9664eff7a68267e873"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_darwin_arm64.zip"
    sha256 "a525488cc3a26d25c5769fb7ffcabbfcd64f79cec5ebbfc94c18b5ec74a03b35"
  end

  depends_on arch: [:x86_64, :arm64]
end
