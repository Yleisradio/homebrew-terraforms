cask "terraform-1.3.0-rc1" do
  version "1.3.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-rc1/terraform_1.3.0-rc1_darwin_amd64.zip"
    sha256 "7010d88700f8b64c647495f8909a46578f70c92178a9e0b710619c1dc825e9f8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-rc1/terraform_1.3.0-rc1_darwin_arm64.zip"
    sha256 "9bb099ead7093701e55e23016cc476188ef19f538b16a69dacc2aeeb4382db30"
  end

  depends_on arch: [:x86_64, :arm64]
end
