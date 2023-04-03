cask "terraform-1.2.5" do
  version "1.2.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_amd64.zip"
    sha256 "2520fde736b43332b0c2648f4f6dde407335f322a3085114dc4f70e6e50eadc0"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_arm64.zip"
    sha256 "92ad40db4a0930bdf872d6336a7b3a18b17c6fd04d9fc769b554bf51c8add505"
  end

  depends_on arch: [:x86_64, :arm64]
end
