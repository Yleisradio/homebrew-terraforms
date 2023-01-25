cask "terraform-0.12.11" do
  version "0.12.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.11/terraform_0.12.11_darwin_amd64.zip"
    sha256 "8f54fa6256ec4c4a6a1e0094e39825fb7287ef4b4680d9a133ec6dda18b80e29"
  end

  depends_on arch: [:x86_64]
end
