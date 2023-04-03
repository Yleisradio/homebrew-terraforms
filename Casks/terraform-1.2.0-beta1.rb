cask "terraform-1.2.0-beta1" do
  version "1.2.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-beta1/terraform_1.2.0-beta1_darwin_amd64.zip"
    sha256 "da218c513f6062f565ca5f1749acca6cf93d80047d618c2d52b1ee31b3243d64"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-beta1/terraform_1.2.0-beta1_darwin_arm64.zip"
    sha256 "6dd843ee5e947ca93d731bccf147753c43dfcdfd7f5df1460e932822b5340bd3"
  end

  depends_on arch: [:x86_64, :arm64]
end
