cask "terraform-1.2.6" do
  version "1.2.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.6/terraform_1.2.6_darwin_amd64.zip"
    sha256 "31a228531d9cbcd964ca1d5eb0e0d9a1484619627503dcc1ae2a2c63d50ae975"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.6/terraform_1.2.6_darwin_arm64.zip"
    sha256 "d8e13e67f7303f68ca66e882f715d2af80d0124c9511b78f5ce799236654dc8e"
  end

  depends_on arch: [:x86_64, :arm64]
end
