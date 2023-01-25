cask "terraform-1.3.6" do
  version "1.3.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_amd64.zip"
    sha256 "1e0b39ebb6c8bc5aa1bb38a4bc7dc0719f812e55adb6d1c9af33bc2527bb3497"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_arm64.zip"
    sha256 "0df7916a7189939bfcd308e0c78b99bfd1ec5582d05aa109975837c29ceff700"
  end

  depends_on arch: [:x86_64, :arm64]
end
