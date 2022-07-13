cask "terraform-1.2.5" do
  version "1.2.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_amd64.zip"
    sha256 "d196f94486e54407524a0efbcb5756b197b763863ead2e145f86dd6c80fc9ce8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_darwin_arm64.zip"
    sha256 "77dd998d26e578aa22de557dc142672307807c88e3a4da65d8442de61479899f"
  end

  depends_on arch: [:x86_64, :arm64]
end
