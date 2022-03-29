cask "terraform-1.2.0-alpha-20220328" do
  version "1.2.0-alpha-20220328"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha-20220328/terraform_1.2.0-alpha-20220328_darwin_amd64.zip"
    sha256 "f13a13b4656e41e6ca18e5ea894707219ebf4d9dc061a02eaebffc3ec05d26e8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha-20220328/terraform_1.2.0-alpha-20220328_darwin_arm64.zip"
    sha256 "91d9760779d58e9b0f2089858241afa80a24f476187a392affcbf594e62b3c81"
  end

  depends_on arch: [:x86_64, :arm64]
end
