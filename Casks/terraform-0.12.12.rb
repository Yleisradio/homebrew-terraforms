cask "terraform-0.12.12" do
  version "0.12.12"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_darwin_amd64.zip"
    sha256 "c97c51f40d2709143bbefdf7ac9130fc518a0ef337706e7ebdde36cc6056219e"
  end

  depends_on arch: [:x86_64]
end
