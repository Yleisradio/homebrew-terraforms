cask "terraform-1.3.3" do
  version "1.3.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.3/terraform_1.3.3_darwin_amd64.zip"
    sha256 "3f9dcc89206f7503c7f52465a48a97eac7ed0b2daf70404f2b422e42b0064e42"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.3/terraform_1.3.3_darwin_arm64.zip"
    sha256 "2fb68f9a4d1aadc55b10ddc56d07bbcf7a492b9e5c0525eb88e46abdf6eeb3b3"
  end

  depends_on arch: [:x86_64, :arm64]
end
