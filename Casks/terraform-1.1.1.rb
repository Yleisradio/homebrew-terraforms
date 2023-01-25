cask "terraform-1.1.1" do
  version "1.1.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_darwin_amd64.zip"
    sha256 "2850e6deb502bb34deb3e7ba0b45d302c017fff509d0e2ec39f99c1172f2bd37"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_darwin_arm64.zip"
    sha256 "fcaf92a9a9e6106d19b1bed54671809639946688ce02ad35b878802d01031bc2"
  end

  depends_on arch: [:x86_64, :arm64]
end
