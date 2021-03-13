cask "terraform-0.9.9" do
  version "0.9.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.9/terraform_0.9.9_darwin_amd64.zip"
    sha256 "657d522fc08b6f6fba0c913c9d474a80b1c9c1c6e9a497445455a8ff22fd72b3"
  end

  depends_on arch: [:x86_64]
end
