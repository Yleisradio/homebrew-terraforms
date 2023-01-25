cask "terraform-0.15.1" do
  version "0.15.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.1/terraform_0.15.1_darwin_amd64.zip"
    sha256 "754543a004e9545ecbfb8a319a19cd734faea98c06b2345347077d9d1a0c21d9"
  end

  depends_on arch: [:x86_64]
end
