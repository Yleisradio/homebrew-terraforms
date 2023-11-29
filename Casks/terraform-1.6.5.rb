cask "terraform-1.6.5" do
  version "1.6.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_darwin_amd64.zip"
    sha256 "6595f56181b073d564a5f94510d4a40dab39cc6543e6a2c9825f785a48ddaf51"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_darwin_arm64.zip"
    sha256 "5c66fdc6adb6e7aa383b0979b1228c7c7b8d0b7d60989a13993ee8043b756883"
  end

  depends_on arch: [:x86_64, :arm64]
end
