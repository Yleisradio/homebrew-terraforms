cask "terraform-0.7.11" do
  version "0.7.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.11/terraform_0.7.11_darwin_amd64.zip"
    sha256 "69c8d2b07f04e9bf0beb4a333dd189d8616d22fe46692bdb5aef10493ac5e5c6"
  end

  depends_on arch: [:x86_64]
end
