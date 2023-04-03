cask "terraform-1.1.0-alpha20210908" do
  version "1.1.0-alpha20210908"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210908/terraform_1.1.0-alpha20210908_darwin_amd64.zip"
    sha256 "e23c5f21b4d9cda9f2965a4cc38109e26e0decb77b11e378c4e526a35ab66ff6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210908/terraform_1.1.0-alpha20210908_darwin_arm64.zip"
    sha256 "5830f3197ccd3485fc59d808bfc90e852b4f1246e1b39dd0c5250e118943ecc5"
  end

  depends_on arch: [:x86_64, :arm64]
end
