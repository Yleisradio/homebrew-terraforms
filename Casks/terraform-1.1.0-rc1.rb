cask "terraform-1.1.0-rc1" do
  version "1.1.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-rc1/terraform_1.1.0-rc1_darwin_amd64.zip"
    sha256 "a6d28534ff87971f236173a231065ccbbd3565b7fe2ca4f750873c51db8a4fb0"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-rc1/terraform_1.1.0-rc1_darwin_arm64.zip"
    sha256 "3b005902d98f38aab052b233f15dab0048efba6b3a635ee255ce801df5e8aa97"
  end

  depends_on arch: [:x86_64, :arm64]
end
