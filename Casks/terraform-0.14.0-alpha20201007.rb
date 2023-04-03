cask "terraform-0.14.0-alpha20201007" do
  version "0.14.0-alpha20201007"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20201007/terraform_0.14.0-alpha20201007_darwin_amd64.zip"
    sha256 "542f89fd3005dfe9e7d2583182f78872def6a82dda31acafde3f0f8fa99f5098"
  end

  depends_on arch: [:x86_64]
end
