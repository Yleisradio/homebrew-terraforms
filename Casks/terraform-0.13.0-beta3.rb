cask "terraform-0.13.0-beta3" do
  version "0.13.0-beta3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta3/terraform_0.13.0-beta3_darwin_amd64.zip"
    sha256 "dc867d549b1c7140d22e6a5f41fbcaa4d4db9190d191ed1b8c3ab9e1a1afa655"
  end

  depends_on arch: [:x86_64]
end
