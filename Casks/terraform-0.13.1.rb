cask "terraform-0.13.1" do
  version "0.13.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.1/terraform_0.13.1_darwin_amd64.zip"
    sha256 "1c6466be64700f1ae718432789ff2d553076da1de63e08e818de0e478e9eb4e2"
  end

  depends_on arch: [:x86_64]
end
