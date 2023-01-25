cask "terraform-1.0.6" do
  version "1.0.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_darwin_amd64.zip"
    sha256 "a6066c152a8a48f8d23ca63a3b095680247f7003ad5145b905c3791db76fbc44"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.6/terraform_1.0.6_darwin_arm64.zip"
    sha256 "6c54f8efe20d801066e7a3c0cd0d0b828e7e6bf6e3b820fd9435b4e8711f52aa"
  end

  depends_on arch: [:x86_64, :arm64]
end
