cask "terraform-1.2.0" do
  version "1.2.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0/terraform_1.2.0_darwin_amd64.zip"
    sha256 "1b102ba3bf0c60ff6cbee74f721bf8105793c1107a1c6d03dcab98d7079f0c77"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0/terraform_1.2.0_darwin_arm64.zip"
    sha256 "f5e46cabe5889b60597f0e9c365cbc663e4c952c90a16c10489897c2075ae4f0"
  end

  depends_on arch: [:x86_64, :arm64]
end
