cask "terraform-0.14.0-alpha20200923" do
  version "0.14.0-alpha20200923"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20200923/terraform_0.14.0-alpha20200923_darwin_amd64.zip"
    sha256 "03fbdbca7f40731b58b0925dc55010a1d99c294b4cc9d6c4faa2472fc63284de"
  end

  depends_on arch: [:x86_64]
end
