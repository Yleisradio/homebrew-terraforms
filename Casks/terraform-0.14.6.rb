cask "terraform-0.14.6" do
  version "0.14.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_darwin_amd64.zip"
    sha256 "8a8086cab3a7fd812dd5e6ba9801bea1eaab154d5b53e4a9d50850231c1bd7a3"
  end

  depends_on arch: [:x86_64]
end
