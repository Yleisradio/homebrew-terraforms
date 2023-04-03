cask "terraform-1.4.0-beta2" do
  version "1.4.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta2/terraform_1.4.0-beta2_darwin_amd64.zip"
    sha256 "94b42aabedb8b57fa022d7d4720ed45dc67cb86c91e3dc182eb2aef70bb33408"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta2/terraform_1.4.0-beta2_darwin_arm64.zip"
    sha256 "917bbbf62657640f3196125b232cc5503b5dcfbba23001ade03164ef4a4f9ea0"
  end

  depends_on arch: [:x86_64, :arm64]
end
