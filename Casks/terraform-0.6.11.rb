cask "terraform-0.6.11" do
  version "0.6.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.11/terraform_0.6.11_darwin_amd64.zip"
    sha256 "9802b1d56576bea86e34fd3800e100eb043ab6de5a5fa40f7f05a0a44f364dd2"
  end

  depends_on arch: [:x86_64]
end
