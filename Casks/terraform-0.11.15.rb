cask "terraform-0.11.15" do
  version "0.11.15"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.15/terraform_0.11.15_darwin_amd64.zip"
    sha256 "b0d2c9f9068be007f9b8eff211a679e1f07368b640245871bb02a6c2cdf28c07"
  end

  depends_on arch: [:x86_64]
end
