cask "terraform-1.2.0-alpha-20220328" do
  version "1.2.0-alpha-20220328"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha-20220328/terraform_1.2.0-alpha-20220328_darwin_amd64.zip"
    sha256 "6d7252fd9a2b43b27a217d0ff7bf38b1308b0cd6104918a308655332a789f8b9"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha-20220328/terraform_1.2.0-alpha-20220328_darwin_arm64.zip"
    sha256 "5645246a227c922b2f82eb79ca23be8d2db901f1bcb5527373203c56637d4741"
  end

  depends_on arch: [:x86_64, :arm64]
end
