cask "terraform-1.0.3" do
  version "1.0.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_darwin_amd64.zip"
    sha256 "1de66203cf7f62ad990b6d8b583bc2caaadf8594150323f4d632a869448b85b9"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.3/terraform_1.0.3_darwin_arm64.zip"
    sha256 "bf330b9d9bf24e87abf155de3828be2afa5a61d07df4d8cfe3d61e32bf71e687"
  end

  depends_on arch: [:x86_64, :arm64]
end
