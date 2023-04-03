cask "terraform-0.12.15" do
  version "0.12.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.15/terraform_0.12.15_darwin_amd64.zip"
    sha256 "4f238094e332c16ee7bcffe234ae71cf355eb7d54f4ae9f531af0e2d374cecbc"
  end

  depends_on arch: [:x86_64]
end
