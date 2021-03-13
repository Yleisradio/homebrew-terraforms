cask "terraform-0.7.1" do
  version "0.7.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.1/terraform_0.7.1_darwin_amd64.zip"
    sha256 "ab5e9ffe690f52ff13b8f095937119d67d3f0a07744be851657555236245dd98"
  end

  depends_on arch: [:x86_64]
end
