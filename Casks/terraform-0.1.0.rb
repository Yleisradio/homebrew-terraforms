cask "terraform-0.1.0" do
  version "0.1.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.1.0/terraform_0.1.0_darwin_amd64.zip"
    sha256 "309aed0ed61586e2682f58b77781f8e9805745a5edd1aebcddf883c9f624a0b9"
  end

  depends_on arch: [:x86_64]
end
