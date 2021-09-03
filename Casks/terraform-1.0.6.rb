cask "terraform-1.0.6" do
  version "1.0.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_darwin_amd64.zip"
    sha256 "3a97f2fffb75ac47a320d1595e20947afc8324571a784f1bd50bd91e26d5648c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_darwin_arm64.zip"
    sha256 "aaff1eccaf4099da22fe3c6b662011f8295dad9c94a35e1557b92844610f91f3"
  end

  depends_on arch: [:x86_64, :arm64]
end
