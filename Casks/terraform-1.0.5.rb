cask "terraform-1.0.5" do
  version "1.0.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_amd64.zip"
    sha256 "c62492495b455e6877359c01710c6c063c00c21b0abbd593ce3a2b6aa2605daa"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.5/terraform_1.0.5_darwin_arm64.zip"
    sha256 "19b842a67a0f85b79c67cce604091ef2c87946c6d469d7c654751dc084c484d0"
  end

  depends_on arch: [:x86_64, :arm64]
end
