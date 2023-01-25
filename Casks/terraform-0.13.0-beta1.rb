cask "terraform-0.13.0-beta1" do
  version "0.13.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta1/terraform_0.13.0-beta1_darwin_amd64.zip"
    sha256 "9c24cd6e18482b7b5ddc60e00ea08b52e0b1f18b01d8b3196f1dadeea59647bd"
  end

  depends_on arch: [:x86_64]
end
