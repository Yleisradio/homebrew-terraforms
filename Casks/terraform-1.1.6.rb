cask "terraform-1.1.6" do
  version "1.1.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_darwin_amd64.zip"
    sha256 "dc515ad0d44c0543cc3e43e1139ecc1dab37536f5bce91eb63f2b4be483b84e4"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_darwin_arm64.zip"
    sha256 "065ab7df89e8ee64353746400469e6bad540c177f546efba40fdd0c04c9ca9f6"
  end

  depends_on arch: [:x86_64, :arm64]
end
