cask "terraform-0.12.1" do
  version "0.12.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.1/terraform_0.12.1_darwin_amd64.zip"
    sha256 "3c5b0aa8f3acf477a5d5ae997174bd16d49bb0789915b5a40a6deb39692a5c8d"
  end

  depends_on arch: [:x86_64]
end
