cask "terraform-1.1.0-alpha20210922" do
  version "1.1.0-alpha20210922"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210922/terraform_1.1.0-alpha20210922_darwin_amd64.zip"
    sha256 "79fb74af2ca42e39f217db4ca8cadd4a47ae900f632ec947b24738c65b80e40a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210922/terraform_1.1.0-alpha20210922_darwin_arm64.zip"
    sha256 "d84fd0d2e967d2a822cf86c937739672ae533169af4b36cd8c6880f81847406b"
  end

  depends_on arch: [:x86_64, :arm64]
end
