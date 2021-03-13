cask "terraform-0.13.6" do
  version "0.13.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_darwin_amd64.zip"
    sha256 "cbb76aed9c01a8c0fbee4e3a10112ab7836440fa63d93414a1dc45ef59bc0ea2"
  end

  depends_on arch: [:x86_64]
end
