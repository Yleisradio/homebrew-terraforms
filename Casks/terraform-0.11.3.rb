cask "terraform-0.11.3" do
  version "0.11.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.3/terraform_0.11.3_darwin_amd64.zip"
    sha256 "183078bf230e517e6f41e47d6e7d3b61093c6bb5a2b85958c01a4cf3949b7c14"
  end

  depends_on arch: [:x86_64]
end
