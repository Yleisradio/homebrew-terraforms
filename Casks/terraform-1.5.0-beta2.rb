cask "terraform-1.5.0-beta2" do
  version "1.5.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0-beta2/terraform_1.5.0-beta2_darwin_amd64.zip"
    sha256 "d34cddf4636872d9e8fd840b5e421bec42552323165ef0589eeb8dc4bd442c48"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0-beta2/terraform_1.5.0-beta2_darwin_arm64.zip"
    sha256 "b7be82184bbe91d2f042151f7f097522cfb3c990cb18982caa1591305f619a0b"
  end

  depends_on arch: [:x86_64, :arm64]
end
