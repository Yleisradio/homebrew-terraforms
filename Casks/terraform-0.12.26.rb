cask "terraform-0.12.26" do
  version "0.12.26"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_darwin_amd64.zip"
    sha256 "d100f6949ba4de1f44ba02cac02550e416bfed93b31c0bcc082a3772ff22de1d"
  end

  depends_on arch: [:x86_64]
end
