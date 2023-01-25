cask "terraform-0.15.0-rc2" do
  version "0.15.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-rc2/terraform_0.15.0-rc2_darwin_amd64.zip"
    sha256 "04a54c3dd8723cfe824ac6605bf013c147872a228736564b79eb20799e1800a9"
  end

  depends_on arch: [:x86_64]
end
