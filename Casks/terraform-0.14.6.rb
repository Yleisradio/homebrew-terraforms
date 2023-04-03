cask "terraform-0.14.6" do
  version "0.14.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_darwin_amd64.zip"
    sha256 "d83b0427138749ae105ae10fa65cbb81027b5efc970bacd3911c674af932e27c"
  end

  depends_on arch: [:x86_64]
end
