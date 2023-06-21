cask "terraform-1.5.1" do
  version "1.5.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.1/terraform_1.5.1_darwin_amd64.zip"
    sha256 "4f9f518b40399a9271dd8e449a6335ec94a4de60fc8789711ede7a4b9e630a47"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.1/terraform_1.5.1_darwin_arm64.zip"
    sha256 "f691b79319bd82daac2d8b6cbb595d3e8523296c4cd20bf7da0d12fe9eefdfa7"
  end

  depends_on arch: [:x86_64, :arm64]
end
