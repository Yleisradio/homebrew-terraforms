cask "terraform-1.1.2" do
  version "1.1.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_darwin_amd64.zip"
    sha256 "18c8b539c4e319c151d94a9e068be3cd33323d42e1dc8065c7acbca9843fa2d5"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_darwin_arm64.zip"
    sha256 "782854af8366e15ab2140238133e85f0b0faf435e35ec352aabdf2dd6d09a744"
  end

  depends_on arch: [:x86_64, :arm64]
end
