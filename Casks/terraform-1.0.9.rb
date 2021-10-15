cask "terraform-1.0.9" do
  version "1.0.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_darwin_amd64.zip"
    sha256 "fb791c3efa323c5f0c2c36d14b9230deb1dc37f096a8159e718e8a9efa49a879"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_darwin_arm64.zip"
    sha256 "aa5cc13903be35236a60d116f593e519534bcabbb2cf91b69cae19307a17b3c0"
  end

  depends_on arch: [:x86_64, :arm64]
end
