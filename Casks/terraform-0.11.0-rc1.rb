cask "terraform-0.11.0-rc1" do
  version "0.11.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.0-rc1/terraform_0.11.0-rc1_darwin_amd64.zip"
    sha256 "c7bbc03a40c089077e77befb3405c3fdf456f46e7b3bdafc50e48bfcc6f7b5a5"
  end

  depends_on arch: [:x86_64]
end
