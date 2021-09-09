cask "terraform-1.1.0-alpha20210908" do
  version "1.1.0-alpha20210908"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210908/terraform_1.1.0-alpha20210908_darwin_amd64.zip"
    sha256 "1ab3aa88a42557af41bd9412f14335479785e36af95408a75c0b3bf0af867a27"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210908/terraform_1.1.0-alpha20210908_darwin_arm64.zip"
    sha256 "cecb24cfd7583a581bb45a46bdfc6617c2afd199ffd78754d903eef883333498"
  end

  depends_on arch: [:x86_64, :arm64]
end
