cask "terraform-0.14.0-rc1" do
  version "0.14.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-rc1/terraform_0.14.0-rc1_darwin_amd64.zip"
    sha256 "4fff2d849d96c6278188dfe10d371863253b8f789c98d17c8cffc4eda738810e"
  end

  depends_on arch: [:x86_64]
end
