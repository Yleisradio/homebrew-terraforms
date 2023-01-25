cask "terraform-1.3.1" do
  version "1.3.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_darwin_amd64.zip"
    sha256 "2be5311db5199fa3d900422496fd5ff954fc852700511c1e9804fdddc06b43fa"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_darwin_arm64.zip"
    sha256 "15a0d43c8458f628172151c2598bc8f4206a2a015c64a377d3dc6949cd605f13"
  end

  depends_on arch: [:x86_64, :arm64]
end
