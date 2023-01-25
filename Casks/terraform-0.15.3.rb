cask "terraform-0.15.3" do
  version "0.15.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.3/terraform_0.15.3_darwin_amd64.zip"
    sha256 "7ef568de653461b2b11b94498b79d737d0812e02093a1ef16061c489df63bc0f"
  end

  depends_on arch: [:x86_64]
end
