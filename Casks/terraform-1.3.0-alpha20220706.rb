cask "terraform-1.3.0-alpha20220706" do
  version "1.3.0-alpha20220706"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220706/terraform_1.3.0-alpha20220706_darwin_amd64.zip"
    sha256 "22260dc6eb0cd8a18f690b80299bf07dc5944876bbf6ec552837c4242303cb62"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220706/terraform_1.3.0-alpha20220706_darwin_arm64.zip"
    sha256 "b7eb881cf519383ac220b65207f90349bbff6064a037905a02855f5d8fcf7cec"
  end

  depends_on arch: [:x86_64, :arm64]
end
