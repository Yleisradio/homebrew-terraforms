cask "terraform-1.0.8" do
  version "1.0.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_darwin_amd64.zip"
    sha256 "e2493c7ae12597d4a1e6437f6805b0a8bcaf01fc4e991d1f52f2773af3317342"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_darwin_arm64.zip"
    sha256 "9f0e1366484748ecbd87c8ef69cc4d3d79296b0e2c1a108bcbbff985dbb92de8"
  end

  depends_on arch: [:x86_64, :arm64]
end
