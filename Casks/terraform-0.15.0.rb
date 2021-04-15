cask "terraform-0.15.0" do
  version "0.15.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_darwin_amd64.zip"
    sha256 "96537262e38008a421d329ce51c1bc2a1926f0b4e68270c92a81a8a42fa2c513"
  end

  depends_on arch: [:x86_64]
end
