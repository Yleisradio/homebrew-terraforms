cask "terraform-0.13.6" do
  version "0.13.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_darwin_amd64.zip"
    sha256 "1df49e6f05804a08a7f9d3ea6c393d20ae43e2a74722cd64f3e120d49e0b57d4"
  end

  depends_on arch: [:x86_64]
end
