cask "terraform-0.12.20" do
  version "0.12.20"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_darwin_amd64.zip"
    sha256 "d814abcba5fded1ad71fca9b133c744d9b62d69dda02d206edcd9d72656d2ef2"
  end

  depends_on arch: [:x86_64]
end
