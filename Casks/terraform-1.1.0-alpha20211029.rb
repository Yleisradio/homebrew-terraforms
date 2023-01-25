cask "terraform-1.1.0-alpha20211029" do
  version "1.1.0-alpha20211029"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211029/terraform_1.1.0-alpha20211029_darwin_amd64.zip"
    sha256 "7b78c9f29ebac6e17af979654a1bf84901a7759c4f30c7ded88313d08abe98c7"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211029/terraform_1.1.0-alpha20211029_darwin_arm64.zip"
    sha256 "16ed907ee22a180a74558794cae3d46b39a66523fea69d159fabbb0e4c088e89"
  end

  depends_on arch: [:x86_64, :arm64]
end
