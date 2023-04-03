cask "terraform-0.11.15" do
  version "0.11.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.15/terraform_0.11.15_darwin_amd64.zip"
    sha256 "9c3214dcaa277c3773d52d514a76959c82896a1661061b7e5f9523c38add10b7"
  end

  depends_on arch: [:x86_64]
end
