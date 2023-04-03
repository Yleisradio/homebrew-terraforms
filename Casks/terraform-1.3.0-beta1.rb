cask "terraform-1.3.0-beta1" do
  version "1.3.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-beta1/terraform_1.3.0-beta1_darwin_amd64.zip"
    sha256 "3d07988b32e8a4d744765d0c78ebc64e43f737621d19cf05ef898f8537a12ae4"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-beta1/terraform_1.3.0-beta1_darwin_arm64.zip"
    sha256 "01efcf84b1d98c20e3675b76221f67b4f0d789f450ded6893bf09092640ebfd0"
  end

  depends_on arch: [:x86_64, :arm64]
end
