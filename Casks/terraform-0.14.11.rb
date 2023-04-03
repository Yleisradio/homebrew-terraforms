cask "terraform-0.14.11" do
  version "0.14.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_darwin_amd64.zip"
    sha256 "88d266a53b4c09e9778123f274351d7f6e48c08c12edaece8f4e360ade3bd847"
  end

  depends_on arch: [:x86_64]
end
