cask "terraform-1.8.0-beta1" do
  version "1.8.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.8.0-beta1/terraform_1.8.0-beta1_darwin_amd64.zip"
    sha256 "a975d14026fe2b36bd0ab09c2cae113d2d2a58173151387981e6ce787094b91c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.8.0-beta1/terraform_1.8.0-beta1_darwin_arm64.zip"
    sha256 "8459f7e2ac80844ac7a78b4b667357e47a713eccddf8782d7428e91bf6c220f0"
  end

  depends_on arch: [:x86_64, :arm64]
end
