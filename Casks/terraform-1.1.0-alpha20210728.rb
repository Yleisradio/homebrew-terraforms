cask "terraform-1.1.0-alpha20210728" do
  version "1.1.0-alpha20210728"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210728/terraform_1.1.0-alpha20210728_darwin_amd64.zip"
    sha256 "16f1d4e53b29dacc61184c8e52217c6f8c1197b3803a698cdc2ed1848a1b20f6"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210728/terraform_1.1.0-alpha20210728_darwin_arm64.zip"
    sha256 "3de8ab1cff4e8db772ba4177e3cf9b25957f1aea19517f7a70718c18f0ccc7f9"
  end

  depends_on arch: [:x86_64, :arm64]
end
