cask "terraform-0.10.8" do
  version "0.10.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_darwin_amd64.zip"
    sha256 "3f05acdf0a9e04ba7e3bda18521feb0b310462dcce62c454854a40519b1695ed"
  end

  depends_on arch: [:x86_64]
end
