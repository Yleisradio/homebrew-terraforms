cask "terraform-1.2.0-rc2" do
  version "1.2.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc2/terraform_1.2.0-rc2_darwin_amd64.zip"
    sha256 "12e9dbf25d532e3d7ff422f90eca5118de970e24e28feb998e6e37fdc3cedf3c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc2/terraform_1.2.0-rc2_darwin_arm64.zip"
    sha256 "149e813432378cb228b380b8ff9e46185fdba4193810bfd8f51dfce9317ca85e"
  end

  depends_on arch: [:x86_64, :arm64]
end
