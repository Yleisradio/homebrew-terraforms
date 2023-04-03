cask "terraform-1.3.7" do
  version "1.3.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_amd64.zip"
    sha256 "eeae48adcd55212b34148ed203dd5843e9b2a84a852a9877f3386fadb0514980"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.7/terraform_1.3.7_darwin_arm64.zip"
    sha256 "01d553db5f7b4cf0729b725e4402643efde5884b1dabf5eb80af328ce5e447cf"
  end

  depends_on arch: [:x86_64, :arm64]
end
