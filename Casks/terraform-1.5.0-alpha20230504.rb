cask "terraform-1.5.0-alpha20230504" do
  version "1.5.0-alpha20230504"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0-alpha20230504/terraform_1.5.0-alpha20230504_darwin_amd64.zip"
    sha256 "32c5f4b9ff4258160fb94bcc5f04c9f187ebf1f56cf1ca6efc5e11c0aca500b6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0-alpha20230504/terraform_1.5.0-alpha20230504_darwin_arm64.zip"
    sha256 "d8940671bdf5dc2124eff2dbaa1a82e0e3847a38c7501e52d6b9c6f908002efd"
  end

  depends_on arch: [:x86_64, :arm64]
end
