cask "terraform-0.12.8" do
  version "0.12.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.8/terraform_0.12.8_darwin_amd64.zip"
    sha256 "2c2d9d435712f4be989738b7899917ced7c12ab05b8ddc14359ed4ddb1bc9375"
  end

  depends_on arch: [:x86_64]
end
