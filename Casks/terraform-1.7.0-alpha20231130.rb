cask "terraform-1.7.0-alpha20231130" do
  version "1.7.0-alpha20231130"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-alpha20231130/terraform_1.7.0-alpha20231130_darwin_amd64.zip"
    sha256 "c7e399552d7490df1472e97a72483b030fba9c96a65c42566fb6009483768c8f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-alpha20231130/terraform_1.7.0-alpha20231130_darwin_arm64.zip"
    sha256 "ad7bef2149b8bf8d695aa5fda3f5bffa38c71fdb4ed5c4243f2f826fc6554219"
  end

  depends_on arch: [:x86_64, :arm64]
end
