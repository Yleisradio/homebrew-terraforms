cask "terraform-0.13.0-rc1" do
  version "0.13.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-rc1/terraform_0.13.0-rc1_darwin_amd64.zip"
    sha256 "cf24555d0089947d690dbb4860bc7f4206da5b71092f150c4785185b2ed837cd"
  end

  depends_on arch: [:x86_64]
end
