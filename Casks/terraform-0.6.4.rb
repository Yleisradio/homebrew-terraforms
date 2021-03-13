cask "terraform-0.6.4" do
  version "0.6.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.4/terraform_0.6.4_darwin_amd64.zip"
    sha256 "e2eee073432487aabd69003b3a293caa6e087d4b435d29f6406079333e2dca73"
  end

  depends_on arch: [:x86_64]
end
