cask "terraform-0.14.10" do
  version "0.14.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_darwin_amd64.zip"
    sha256 "ac56b87611ea4cff4b1f21d320d38a46dac0e4730d1d90509f46b0bcb2f5c50e"
  end

  depends_on arch: [:x86_64]
end
