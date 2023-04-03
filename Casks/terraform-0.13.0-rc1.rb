cask "terraform-0.13.0-rc1" do
  version "0.13.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-rc1/terraform_0.13.0-rc1_darwin_amd64.zip"
    sha256 "2bbbe855e1e09f03ff06334a7f0b3ba15506e6ac4deb25938f34bb210540a687"
  end

  depends_on arch: [:x86_64]
end
