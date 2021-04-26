cask "terraform-0.15.1" do
  version "0.15.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.1/terraform_0.15.1_darwin_amd64.zip"
    sha256 "dd7220e6a76e4c9555576c0500bea94c6a5cb65f286b3e74e8ea7cc34bbce5be"
  end

  depends_on arch: [:x86_64]
end
