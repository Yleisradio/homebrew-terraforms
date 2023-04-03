cask "terraform-1.1.0-alpha20211006" do
  version "1.1.0-alpha20211006"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211006/terraform_1.1.0-alpha20211006_darwin_amd64.zip"
    sha256 "11eddb6bd353f801e0e0b38d29859e31897eac404285d60424611d6fa2ddda33"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211006/terraform_1.1.0-alpha20211006_darwin_arm64.zip"
    sha256 "fff8eceebfef30eeb52ca153033f69d7dd0925951deb42b016ad84c04aa7f643"
  end

  depends_on arch: [:x86_64, :arm64]
end
