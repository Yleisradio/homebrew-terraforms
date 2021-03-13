cask "terraform-0.12.0-rc1" do
  version "0.12.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.0-rc1/terraform_0.12.0-rc1_darwin_amd64.zip"
    sha256 "cb10093fe8b14771047314b547c7710e363199c40e129bb7e3b4886e3f3b3ca6"
  end

  depends_on arch: [:x86_64]
end
