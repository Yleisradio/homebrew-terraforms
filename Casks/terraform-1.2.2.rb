cask "terraform-1.2.2" do
  version "1.2.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.2/terraform_1.2.2_darwin_amd64.zip"
    sha256 "1568b1f7c22d1612d9608b28433506d3d28aaed11ab2c69e6c104855f3e00a55"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.2/terraform_1.2.2_darwin_arm64.zip"
    sha256 "78097a2e9e25b78cfa7a001eb5c4c27f13097051e6a3f340699febdbd12f62fa"
  end

  depends_on arch: [:x86_64, :arm64]
end
