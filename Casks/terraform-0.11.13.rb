cask "terraform-0.11.13" do
  version "0.11.13"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_darwin_amd64.zip"
    sha256 "e9988443da39e5d81a5f7f1b6a5d97b25e2a1151d9be76cdc2e380df97e57856"
  end

  depends_on arch: [:x86_64]
end
