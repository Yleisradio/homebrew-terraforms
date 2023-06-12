cask "terraform-1.5.0" do
  version "1.5.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_darwin_amd64.zip"
    sha256 "dd64d8a2a75519b933b4f1d76417675ea66bdb45c2a2672cf511825091eba789"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_darwin_arm64.zip"
    sha256 "0765371227ab09e1bb64d606fcfe3d157a2992ac3b82ffabfb9976db53bd791e"
  end

  depends_on arch: [:x86_64, :arm64]
end
