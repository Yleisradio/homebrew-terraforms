cask "terraform-1.1.6" do
  version "1.1.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_darwin_amd64.zip"
    sha256 "bbfc916117e45788661c066ec39a0727f64c7557bf6ce9f486bbd97c16841975"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_darwin_arm64.zip"
    sha256 "dddb11195fc413653b98e7a830ec7314f297e6c22575fc878f4ee2287a25b4f5"
  end

  depends_on arch: [:x86_64, :arm64]
end
