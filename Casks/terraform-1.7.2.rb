cask "terraform-1.7.2" do
  version "1.7.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.2/terraform_1.7.2_darwin_amd64.zip"
    sha256 "dad2fd54b3dda89b39978dcd27c8c62e13010efdc0507a04b6ad57257b57085e"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.2/terraform_1.7.2_darwin_arm64.zip"
    sha256 "d8c7b8b1aa7f0b38a2e437d9c9e4e632b2b258e3bf48bb6de4626f3b0afea5e4"
  end

  depends_on arch: [:x86_64, :arm64]
end
