cask "terraform-1.5.0-rc1" do
  version "1.5.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0-rc1/terraform_1.5.0-rc1_darwin_amd64.zip"
    sha256 "f99eddbdf9c003b5ba24293d2c7e1c283005e352f56c2242ed2dec5e90fa4466"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0-rc1/terraform_1.5.0-rc1_darwin_arm64.zip"
    sha256 "0974e0e234563004187fe1c83433d55103a00d4070ed1acb8558a79e82428aea"
  end

  depends_on arch: [:x86_64, :arm64]
end
