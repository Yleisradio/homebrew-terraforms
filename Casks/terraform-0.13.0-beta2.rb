cask "terraform-0.13.0-beta2" do
  version "0.13.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta2/terraform_0.13.0-beta2_darwin_amd64.zip"
    sha256 "ffe52a79916102639a3b2646be237fe7b2748436c8c198099cc87c0a615ac9c2"
  end

  depends_on arch: [:x86_64]
end
