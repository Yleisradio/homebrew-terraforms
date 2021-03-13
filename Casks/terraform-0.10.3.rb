cask "terraform-0.10.3" do
  version "0.10.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.3/terraform_0.10.3_darwin_amd64.zip"
    sha256 "6d7c51b8b8eee81b07c6b594077e0af95be518ed88b312bd3989c37b2924c2e6"
  end

  depends_on arch: [:x86_64]
end
