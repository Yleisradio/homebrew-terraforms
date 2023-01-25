cask "terraform-1.1.0-alpha20211020" do
  version "1.1.0-alpha20211020"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211020/terraform_1.1.0-alpha20211020_darwin_amd64.zip"
    sha256 "c86d0aa04c3dc85a7e41e006195041424527ff61b7ec75ff8df78a1d531661e3"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20211020/terraform_1.1.0-alpha20211020_darwin_arm64.zip"
    sha256 "30099d8ff71d4582e7ce96cef7cd5c9ccf3ac5090f66e1dc6cb44742de0aa48e"
  end

  depends_on arch: [:x86_64, :arm64]
end
