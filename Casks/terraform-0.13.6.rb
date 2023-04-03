cask "terraform-0.13.6" do
  version "0.13.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.6/terraform_0.13.6_darwin_amd64.zip"
    sha256 "dd933ecd25f38c23e2f7e70503912362429ce251d4d5ef17f4be55bbfd55bafd"
  end

  depends_on arch: [:x86_64]
end
