cask "terraform-1.1.0-beta2" do
  version "1.1.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta2/terraform_1.1.0-beta2_darwin_amd64.zip"
    sha256 "851347d7777c4ed874ff7a321a7cbd8478bd323edf204783b35d00f077a8c826"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta2/terraform_1.1.0-beta2_darwin_arm64.zip"
    sha256 "7b0a670952ea91d507169be4e6b34b0efa318f8d8201b6eb4d81e48aad423452"
  end

  depends_on arch: [:x86_64, :arm64]
end
