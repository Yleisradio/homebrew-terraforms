cask "terraform-0.6.9" do
  version "0.6.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.9/terraform_0.6.9_darwin_amd64.zip"
    sha256 "9cf892c073a9fce0e9f136162f82c5b2d373c32cc2c5bd5c5eb16631262fad89"
  end

  depends_on arch: [:x86_64]
end
