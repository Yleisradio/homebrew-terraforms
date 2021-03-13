cask "terraform-0.14.2" do
  version "0.14.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.2/terraform_0.14.2_darwin_amd64.zip"
    sha256 "31a7691f891f4e4c5d77b5eab9ecc86516df638a0b7cbde120c9e14bef68f7ac"
  end

  depends_on arch: [:x86_64]
end
