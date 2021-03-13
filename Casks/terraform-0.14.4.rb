cask "terraform-0.14.4" do
  version "0.14.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.4/terraform_0.14.4_darwin_amd64.zip"
    sha256 "948d4550b7cd0f9152741c4a5e4fe80167b1cbb7513f939ffef1d50f94c4fb0c"
  end

  depends_on arch: [:x86_64]
end
