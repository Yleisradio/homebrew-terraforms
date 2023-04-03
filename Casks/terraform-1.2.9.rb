cask "terraform-1.2.9" do
  version "1.2.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_darwin_amd64.zip"
    sha256 "84a678ece9929cebc34c7a9a1ba287c8b91820b336f4af8437af7feaa0117b7c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_darwin_arm64.zip"
    sha256 "bc3b94b53cdf1be3c4988faa61aad343f48e013928c64bfc6ebeb61657f97baa"
  end

  depends_on arch: [:x86_64, :arm64]
end
