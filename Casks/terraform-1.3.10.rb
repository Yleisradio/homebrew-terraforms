cask "terraform-1.3.10" do
  version "1.3.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.10/terraform_1.3.10_darwin_amd64.zip"
    sha256 "e5cf68ef9b259503abf515a1716fcfe21d46af22e24b8ebbbe7849fbfafb428c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.10/terraform_1.3.10_darwin_arm64.zip"
    sha256 "39cf7882108034f78c0d9144153271efb11ba99924170828eda9b0196f3da6fd"
  end

  depends_on arch: [:x86_64, :arm64]
end
