cask "terraform-1.6.1" do
  version "1.6.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.1/terraform_1.6.1_darwin_amd64.zip"
    sha256 "48951cc7f15bc028a867642425db720c18f13491007ee218dcc54b5ea0519d17"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.1/terraform_1.6.1_darwin_arm64.zip"
    sha256 "85ad9903a48c1b997540d1b9fdd47d7b29cb6be740e7c34f6f8afc7581f4ac8e"
  end

  depends_on arch: [:x86_64, :arm64]
end
