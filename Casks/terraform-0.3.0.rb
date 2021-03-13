cask "terraform-0.3.0" do
  version "0.3.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.3.0/terraform_0.3.0_darwin_amd64.zip"
    sha256 "6c8eb551381eb331c0ef3f5615a60529bc45de1c702b02ed4dfa523cffa26084"
  end

  depends_on arch: [:x86_64]
end
