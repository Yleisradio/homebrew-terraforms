cask "terraform-1.2.8" do
  version "1.2.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_darwin_amd64.zip"
    sha256 "0f8eecc764b57a938aa115a3ce2baa0d245479f17c28a4217bcf432ee23c2c5d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.8/terraform_1.2.8_darwin_arm64.zip"
    sha256 "d6b900682d33aff84f8f63f69557f8ea8537218748fcac6f12483aaa46959a14"
  end

  depends_on arch: [:x86_64, :arm64]
end
