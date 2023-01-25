cask "terraform-1.2.0" do
  version "1.2.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.0/terraform_1.2.0_darwin_amd64.zip"
    sha256 "cd60e3c04eccfceb655c60b0b1fa42cd07b23ecfabcbeebeab60c46b2b693dbf"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.0/terraform_1.2.0_darwin_arm64.zip"
    sha256 "a35b308a05736c45a134ea52ead712a9cc91c4cdcfb859d02951190217ef26ef"
  end

  depends_on arch: [:x86_64, :arm64]
end
