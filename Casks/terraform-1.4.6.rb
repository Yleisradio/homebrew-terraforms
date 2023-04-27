cask "terraform-1.4.6" do
  version "1.4.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.6/terraform_1.4.6_darwin_amd64.zip"
    sha256 "5d8332994b86411b049391d31ad1a0785dfb470db8b9c50617de28ddb5d1f25d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.6/terraform_1.4.6_darwin_arm64.zip"
    sha256 "30a2f87298ff9f299452119bd14afaa8d5b000c572f62fa64baf432e35d9dec1"
  end

  depends_on arch: [:x86_64, :arm64]
end
