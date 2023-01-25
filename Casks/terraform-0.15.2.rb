cask "terraform-0.15.2" do
  version "0.15.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.2/terraform_0.15.2_darwin_amd64.zip"
    sha256 "ff5a2f187a2c0ba214ee0a4ab766a1c9025e5b4335b14da89c15cfe8b3bed2ca"
  end

  depends_on arch: [:x86_64]
end
