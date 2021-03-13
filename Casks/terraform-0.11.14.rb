cask "terraform-0.11.14" do
  version "0.11.14"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_darwin_amd64.zip"
    sha256 "829bdba148afbd61eab4aafbc6087838f0333d8876624fe2ebc023920cfc2ad5"
  end

  depends_on arch: [:x86_64]
end
