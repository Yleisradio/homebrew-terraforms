cask "terraform-0.7.8" do
  version "0.7.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.8/terraform_0.7.8_darwin_amd64.zip"
    sha256 "9daaec788ee0540d7b3a92f2dcf86656f3c567e2c267c64c03aa712901796470"
  end

  depends_on arch: [:x86_64]
end
