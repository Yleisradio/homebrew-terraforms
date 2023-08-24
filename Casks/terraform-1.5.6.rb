cask "terraform-1.5.6" do
  version "1.5.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.6/terraform_1.5.6_darwin_amd64.zip"
    sha256 "a65a994111b9d1c7fca8fdb76470430a54e1367c6342507228954d944e82f9db"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.6/terraform_1.5.6_darwin_arm64.zip"
    sha256 "c540d0ccbfb37884232dffd277c0ed08ab01ea7c05fe61b66951dddfc0dd802c"
  end

  depends_on arch: [:x86_64, :arm64]
end
