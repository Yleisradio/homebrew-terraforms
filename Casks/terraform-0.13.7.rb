cask "terraform-0.13.7" do
  version "0.13.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.7/terraform_0.13.7_darwin_amd64.zip"
    sha256 "60f3561eb11fa6c61321d6c8b698023eb7b74dc1a49210bd5f5acb03f453db9b"
  end

  depends_on arch: [:x86_64]
end
