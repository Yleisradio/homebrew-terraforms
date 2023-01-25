cask "terraform-1.3.0-rc1" do
  version "1.3.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-rc1/terraform_1.3.0-rc1_darwin_amd64.zip"
    sha256 "18d8c4a4384ecb11071e178ec58eeb1c82dde84793e7bf68a1e2ea2c3a8c46e5"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-rc1/terraform_1.3.0-rc1_darwin_arm64.zip"
    sha256 "3b825cefa3b3a7a6c3e5f78b5a36a20aabda2a1fc0e7874e50d226d0c3773d9d"
  end

  depends_on arch: [:x86_64, :arm64]
end
