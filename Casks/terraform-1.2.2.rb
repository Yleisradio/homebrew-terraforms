cask "terraform-1.2.2" do
  version "1.2.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.2/terraform_1.2.2_darwin_amd64.zip"
    sha256 "bd224d57718ed2b6e5e3b55383878d4b122c6dc058d65625605cef1ace9dcb25"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.2/terraform_1.2.2_darwin_arm64.zip"
    sha256 "4750d46e47345809a0baa3c330771c8c8a227b77bec4caa7451422a21acefae5"
  end

  depends_on arch: [:x86_64, :arm64]
end
