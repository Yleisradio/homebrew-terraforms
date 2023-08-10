cask "terraform-1.5.5" do
  version "1.5.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.5/terraform_1.5.5_darwin_amd64.zip"
    sha256 "6d61639e2141b7c23a9219c63994f729aa41f91110a1aa08b8a37969fb45e229"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.5/terraform_1.5.5_darwin_arm64.zip"
    sha256 "c7fdeddb4739fdd5bada9d45fd786e2cbaf6e9e364693eee45c83e95281dad3a"
  end

  depends_on arch: [:x86_64, :arm64]
end
