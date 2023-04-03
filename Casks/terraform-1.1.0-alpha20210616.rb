cask "terraform-1.1.0-alpha20210616" do
  version "1.1.0-alpha20210616"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210616/terraform_1.1.0-alpha20210616_darwin_amd64.zip"
    sha256 "fd9a9c6ae65f3678b81e4ba5fe72350f0191ed0a0fc2ec12a6139e3a8887e203"
  end

  depends_on arch: [:x86_64]
end
