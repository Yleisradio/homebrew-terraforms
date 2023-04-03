cask "terraform-0.12.17" do
  version "0.12.17"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.17/terraform_0.12.17_darwin_amd64.zip"
    sha256 "130235cad547ab0f9849dedbd020528e0c76798bd53528a3cd63c7ce51290e8f"
  end

  depends_on arch: [:x86_64]
end
