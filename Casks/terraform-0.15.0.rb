cask "terraform-0.15.0" do
  version "0.15.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_darwin_amd64.zip"
    sha256 "de9c15e25b5f60fd6cb4bdabf16cff252977a97afde6cfda8d465ef28be5fd81"
  end

  depends_on arch: [:x86_64]
end
