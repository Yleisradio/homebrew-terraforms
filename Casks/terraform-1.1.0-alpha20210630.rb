cask "terraform-1.1.0-alpha20210630" do
  version "1.1.0-alpha20210630"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210630/terraform_1.1.0-alpha20210630_darwin_amd64.zip"
    sha256 "e1aad1616af609c2c87ccfe6d617c698a44abd1b0147afc0a1958a08bd4c2c9e"
  end

  depends_on arch: [:x86_64]
end
