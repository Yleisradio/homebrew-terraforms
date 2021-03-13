cask "terraform-0.6.16" do
  version "0.6.16"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.16/terraform_0.6.16_darwin_amd64.zip"
    sha256 "23feb79263126877e6128a03c600cd626f6691a118a474694c5ad45cc5da9366"
  end

  depends_on arch: [:x86_64]
end
