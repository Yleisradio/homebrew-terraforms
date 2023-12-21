cask "terraform-1.7.0-rc1" do
  version "1.7.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-rc1/terraform_1.7.0-rc1_darwin_amd64.zip"
    sha256 "9e043db605dc385483e8a9348d4dd66d3bae3bd470fb9af775f401daffecdc45"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-rc1/terraform_1.7.0-rc1_darwin_arm64.zip"
    sha256 "008bf91d5f611b9f58847c927cc8fae130d272af0288a2d2352be523084118e4"
  end

  depends_on arch: [:x86_64, :arm64]
end
