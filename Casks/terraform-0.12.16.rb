cask "terraform-0.12.16" do
  version "0.12.16"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_darwin_amd64.zip"
    sha256 "02f893e326b25705aff2594d9f28a4a0c9d50f44a0e7e7129633f02c11a2e47d"
  end

  depends_on arch: [:x86_64]
end
