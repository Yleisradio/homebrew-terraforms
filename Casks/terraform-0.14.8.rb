cask "terraform-0.14.8" do
  version "0.14.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_darwin_amd64.zip"
    sha256 "596363941c5acfb05d81f6fe8813f007427de0e976972bdd60106bf4e6d8eb54"
  end

  depends_on arch: [:x86_64]
end
