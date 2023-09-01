cask "terraform-1.6.0-beta1" do
  version "1.6.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-beta1/terraform_1.6.0-beta1_darwin_amd64.zip"
    sha256 "7ee964e69df8dc77d213a7a1ffa94de1264f47f72931d3711fc0b75a3d3f285c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-beta1/terraform_1.6.0-beta1_darwin_arm64.zip"
    sha256 "a6d3116887e69e00a277d7fdeff3705d7d308703798aa7d8d9e9249dac165eab"
  end

  depends_on arch: [:x86_64, :arm64]
end
