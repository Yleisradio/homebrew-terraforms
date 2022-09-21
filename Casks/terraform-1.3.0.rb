cask "terraform-1.3.0" do
  version "1.3.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_darwin_amd64.zip"
    sha256 "6502dbcbd7d1a356fa446ec12c2859a9a7276af92c89ce3cef7f675a8582a152"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0/terraform_1.3.0_darwin_arm64.zip"
    sha256 "6a3512a1b1006f2edc6fe5f51add9a6e1ef3967912ecf27e66f22e70b9ad7158"
  end

  depends_on arch: [:x86_64, :arm64]
end
