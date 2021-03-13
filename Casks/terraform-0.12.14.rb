cask "terraform-0.12.14" do
  version "0.12.14"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.14/terraform_0.12.14_darwin_amd64.zip"
    sha256 "2a4538ccf212865cb2c275dc079926f409b3809cb589638f560d5ab389babe00"
  end

  depends_on arch: [:x86_64]
end
