cask "terraform-1.1.0-alpha20211029" do
  version "1.1.0-alpha20211029"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211029/terraform_1.1.0-alpha20211029_darwin_amd64.zip"
    sha256 "de70d87ea634290ac03ee20c5901eb5cef68d42d1c5f74a001863f7479805646"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211029/terraform_1.1.0-alpha20211029_darwin_arm64.zip"
    sha256 "3631eec8ec544e56092f29e0e8c0466f86a94e92d5708823bcf36a189eaa0b74"
  end

  depends_on arch: [:x86_64, :arm64]
end
