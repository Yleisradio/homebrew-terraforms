cask "terraform-0.12.9" do
  version "0.12.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_darwin_amd64.zip"
    sha256 "d8314eda99d48f17c737643eb1804c654c6e08c53465dd0fa8d8348c77150e6b"
  end

  depends_on arch: [:x86_64]
end
