cask "terraform-0.13.1" do
  version "0.13.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_darwin_amd64.zip"
    sha256 "fe5d1b6e22892c5dcc8b44d2a26ea1e29d90af6fcb1472f3881ca3c08c8a8084"
  end

  depends_on arch: [:x86_64]
end
