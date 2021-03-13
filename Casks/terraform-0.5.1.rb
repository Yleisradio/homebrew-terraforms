cask "terraform-0.5.1" do
  version "0.5.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.5.1/terraform_0.5.1_darwin_amd64.zip"
    sha256 "5915d7668b07ea3770f1bc8126764f90723eade0245e0634af3b051ae2ceb7e5"
  end

  depends_on arch: [:x86_64]
end
