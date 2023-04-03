cask "terraform-0.12.30" do
  version "0.12.30"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.30/terraform_0.12.30_darwin_amd64.zip"
    sha256 "7d1a1d12bedce7b2c474495db0d777389a4e9b02181ad4db9bda3511e586f8e0"
  end

  depends_on arch: [:x86_64]
end
