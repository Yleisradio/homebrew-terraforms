cask "terraform-1.6.2" do
  version "1.6.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_darwin_amd64.zip"
    sha256 "361ffd98f0cdee631cb1475688471c5fb8f41bd6a4d8d300f29df384c82d6316"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_darwin_arm64.zip"
    sha256 "87345e9f2932c29c8d00c5ca9e0361fada18accc2573fd66883b3adb40949be8"
  end

  depends_on arch: [:x86_64, :arm64]
end
