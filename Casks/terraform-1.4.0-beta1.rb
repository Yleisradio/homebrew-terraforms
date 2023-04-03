cask "terraform-1.4.0-beta1" do
  version "1.4.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta1/terraform_1.4.0-beta1_darwin_amd64.zip"
    sha256 "08c54d8aa2429dfc289e2de06797d3f0f3b03e234e90a8e3c64bc69aa2f5f5c5"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0-beta1/terraform_1.4.0-beta1_darwin_arm64.zip"
    sha256 "62de2c92d349626ecde3bbbb8645ac61247b6860f83d34a0ac5e93696ccc3813"
  end

  depends_on arch: [:x86_64, :arm64]
end
