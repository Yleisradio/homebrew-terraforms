cask "terraform-0.14.5" do
  version "0.14.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_darwin_amd64.zip"
    sha256 "4b8633c12e999b0b8cc40cfb3b8b9b9a82d68b05334a188a7f842cbfa4efb495"
  end

  depends_on arch: [:x86_64]
end
