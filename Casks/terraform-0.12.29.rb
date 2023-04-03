cask "terraform-0.12.29" do
  version "0.12.29"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_darwin_amd64.zip"
    sha256 "a920c9fcf912b5f83a4e57cb8ab7afbe5615ec54edd893271c8d271a4d945592"
  end

  depends_on arch: [:x86_64]
end
