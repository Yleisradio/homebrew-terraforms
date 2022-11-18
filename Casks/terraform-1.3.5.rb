cask "terraform-1.3.5" do
  version "1.3.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_amd64.zip"
    sha256 "6bf684dbc19ecbf9225f5a2409def32e5ef7d37af3899726accd9420a88a6bcd"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_darwin_arm64.zip"
    sha256 "33b25ad89dedbd98bba09cbde69dcf9e928029f322ae9494279cf2c8ce47db89"
  end

  depends_on arch: [:x86_64, :arm64]
end
