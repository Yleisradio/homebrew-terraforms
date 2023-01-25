cask "terraform-1.0.4" do
  version "1.0.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_amd64.zip"
    sha256 "a4c40903d351f621f9640316f91efb6294cd53be1f8bec9314c8298f5248af01"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_arm64.zip"
    sha256 "fcf5959566d5fd48acd7846d497be1cead90adf333fdf951649730127281815d"
  end

  depends_on arch: [:x86_64, :arm64]
end
