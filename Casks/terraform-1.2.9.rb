cask "terraform-1.2.9" do
  version "1.2.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_darwin_amd64.zip"
    sha256 "2c4d2b425a0680c6a4d65601a5f42f8b5c23e4ccd3332cf649ce14eaa646b967"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_darwin_arm64.zip"
    sha256 "91f51a352027f338b7673f23ee3c438ca8575933b7f58bfd7a92ffccf552158b"
  end

  depends_on arch: [:x86_64, :arm64]
end
