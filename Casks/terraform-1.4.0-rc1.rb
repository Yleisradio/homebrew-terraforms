cask "terraform-1.4.0-rc1" do
  version "1.4.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-rc1/terraform_1.4.0-rc1_darwin_amd64.zip"
    sha256 "b2feca9468e3ae50d53048bbab98a94ec323594009b2fa9b7a3f4739749cd883"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-rc1/terraform_1.4.0-rc1_darwin_arm64.zip"
    sha256 "9e7e273aafb524efba6b849f9514c237434215c1a4819e8aadc2fab08fe28b82"
  end

  depends_on arch: [:x86_64, :arm64]
end
