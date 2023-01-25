cask "terraform-0.12.13" do
  version "0.12.13"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_darwin_amd64.zip"
    sha256 "ff0ca1bd75c64b0811d3c79d7cce23e9011426efc6851ba7b6c92b7ae1a4cfb4"
  end

  depends_on arch: [:x86_64]
end
