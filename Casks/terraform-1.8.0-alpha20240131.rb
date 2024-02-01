cask "terraform-1.8.0-alpha20240131" do
  version "1.8.0-alpha20240131"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240131/terraform_1.8.0-alpha20240131_darwin_amd64.zip"
    sha256 "f5ff6ea01a93b45f3cc884c9d48d5e26c7933c0e8d176f4fe4ccc2892a096563"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.8.0-alpha20240131/terraform_1.8.0-alpha20240131_darwin_arm64.zip"
    sha256 "7eb7615bc6f3acc3f664a817cbf975374372249286672bc1b857788952fb66de"
  end

  depends_on arch: [:x86_64, :arm64]
end
