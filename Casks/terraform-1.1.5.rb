cask "terraform-1.1.5" do
  version "1.1.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_darwin_amd64.zip"
    sha256 "7d4dbd76329c25869e407706fed01213beb9d6235c26e01c795a141c2065d053"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_darwin_arm64.zip"
    sha256 "723363af9524c0897e9a7d871d27f0d96f6aafd11990df7e6348f5b45d2dbe2c"
  end

  depends_on arch: [:x86_64, :arm64]
end
