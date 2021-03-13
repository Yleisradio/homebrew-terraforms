cask "terraform-0.14.0-rc1" do
  version "0.14.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-rc1/terraform_0.14.0-rc1_darwin_amd64.zip"
    sha256 "6fcb3898b33887fdd3c8f14cf92783a52bdab224164db972e65301f30baac3df"
  end

  depends_on arch: [:x86_64]
end
