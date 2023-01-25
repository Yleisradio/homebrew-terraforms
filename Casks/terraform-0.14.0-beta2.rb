cask "terraform-0.14.0-beta2" do
  version "0.14.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-beta2/terraform_0.14.0-beta2_darwin_amd64.zip"
    sha256 "377213a1387367358b1f81cb46faaa1c3ccdeedab1d4afea39efd6997d534391"
  end

  depends_on arch: [:x86_64]
end
