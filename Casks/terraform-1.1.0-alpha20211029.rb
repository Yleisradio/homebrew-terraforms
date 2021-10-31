cask "terraform-1.1.0-alpha20211029" do
  version "1.1.0-alpha20211029"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211029/terraform_1.1.0-alpha20211029_darwin_amd64.zip"
    sha256 "ab58023b6daa9fd6e5f07282ab48ebd6ad0c5d240224c237f6bf8355fb91574e"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211029/terraform_1.1.0-alpha20211029_darwin_arm64.zip"
    sha256 "3cf2ba01b18d20fe80ac327be61270aca61fc1e50a884734226639122b1738d2"
  end

  depends_on arch: [:x86_64, :arm64]
end
