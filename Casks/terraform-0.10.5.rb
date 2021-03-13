cask "terraform-0.10.5" do
  version "0.10.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.5/terraform_0.10.5_darwin_amd64.zip"
    sha256 "d39ce30b7aa77834d3000173d95df476c0fcfea8114825d8276c38277d3a7436"
  end

  depends_on arch: [:x86_64]
end
