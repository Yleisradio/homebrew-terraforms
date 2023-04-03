cask "terraform-1.2.0-rc2" do
  version "1.2.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc2/terraform_1.2.0-rc2_darwin_amd64.zip"
    sha256 "74cbeb5ef960093dd3a37ddfed1af5c7659d54940a0d977c041f44dd616711a3"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0-rc2/terraform_1.2.0-rc2_darwin_arm64.zip"
    sha256 "f60029b6e08c5793c19268b44305d3ced89243b40b257bfa7e56c6feb443bed9"
  end

  depends_on arch: [:x86_64, :arm64]
end
