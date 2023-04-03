cask "terraform-1.4.0-rc1" do
  version "1.4.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-rc1/terraform_1.4.0-rc1_darwin_amd64.zip"
    sha256 "db875cd9b42a4ea285a9365a329e42de3affba53cdcbd96f86588546c6b06fff"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-rc1/terraform_1.4.0-rc1_darwin_arm64.zip"
    sha256 "46ac4bd57da743c70dac00bd3dccfa25fcbf7cfaa520b4c1cd504d669776d107"
  end

  depends_on arch: [:x86_64, :arm64]
end
