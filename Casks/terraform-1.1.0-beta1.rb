cask "terraform-1.1.0-beta1" do
  version "1.1.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta1/terraform_1.1.0-beta1_darwin_amd64.zip"
    sha256 "9eecd065f592541b0aa444830e905606e549c92969526ff6a6b5d3d9059268a4"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-beta1/terraform_1.1.0-beta1_darwin_arm64.zip"
    sha256 "c55dbc74a318761f13b8343a116b75a1720aa8153e409aca0ce4519debfafd55"
  end

  depends_on arch: [:x86_64, :arm64]
end
