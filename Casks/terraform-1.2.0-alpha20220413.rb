cask "terraform-1.2.0-alpha20220413" do
  version "1.2.0-alpha20220413"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha20220413/terraform_1.2.0-alpha20220413_darwin_amd64.zip"
    sha256 "65220850ab69b2b953526a15e7a9865ca36afc1c4161fd26694327c797697a6d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-alpha20220413/terraform_1.2.0-alpha20220413_darwin_arm64.zip"
    sha256 "479b394738050446235784288879190fadad9e8f463b512d351c22830d9399d9"
  end

  depends_on arch: [:x86_64, :arm64]
end
