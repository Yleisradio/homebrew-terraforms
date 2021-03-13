cask "terraform-0.11.8" do
  version "0.11.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_darwin_amd64.zip"
    sha256 "98c168b06e8b4058c66e044e3744d49956ce7bc3664dc1679a33f8fffc84564d"
  end

  depends_on arch: [:x86_64]
end
