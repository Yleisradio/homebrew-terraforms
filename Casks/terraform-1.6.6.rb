cask "terraform-1.6.6" do
  version "1.6.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_darwin_amd64.zip"
    sha256 "33376343c7e0279b674c1c8b8a31dc3174ac09dd796d32651cc5e3b98f220436"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_darwin_arm64.zip"
    sha256 "01e608fc04cf54869db687a212d60f3dc3d5c828298514857f9e29f8ac1354a9"
  end

  depends_on arch: [:x86_64, :arm64]
end
