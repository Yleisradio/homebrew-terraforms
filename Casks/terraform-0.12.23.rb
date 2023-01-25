cask "terraform-0.12.23" do
  version "0.12.23"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_darwin_amd64.zip"
    sha256 "dc0586ac38232e2b50251efcca3b9911cf263d285a8cf3c0b68538dbdb3b72f4"
  end

  depends_on arch: [:x86_64]
end
