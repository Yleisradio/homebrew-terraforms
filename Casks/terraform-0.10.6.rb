cask "terraform-0.10.6" do
  version "0.10.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.6/terraform_0.10.6_darwin_amd64.zip"
    sha256 "a37f190cfcac21fa2343ec7e3112137d27fb9286c9f5c128547c6221502442c9"
  end

  depends_on arch: [:x86_64]
end
