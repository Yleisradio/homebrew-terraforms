cask "terraform-1.8.0-alpha20240228" do
  version "1.8.0-alpha20240228"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240228/terraform_1.8.0-alpha20240228_darwin_amd64.zip"
    sha256 "1c6b38f3e77a79bd285e7f7c7e800f91b58b5e40b6d736422ecd021ed281799c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240228/terraform_1.8.0-alpha20240228_darwin_arm64.zip"
    sha256 "6251ae32bb0a8a98464e2eb2b43e880b59151ca8db438bef5e10a4785c211074"
  end

  depends_on arch: [:x86_64, :arm64]
end
