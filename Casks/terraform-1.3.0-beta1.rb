cask "terraform-1.3.0-beta1" do
  version "1.3.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-beta1/terraform_1.3.0-beta1_darwin_amd64.zip"
    sha256 "d1eee240f0a86681c0bd34bd77a1a8cbd726dd2e22835414913985aaff285cee"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-beta1/terraform_1.3.0-beta1_darwin_arm64.zip"
    sha256 "953d6425b54c9722a79936d55df36bdf97ee2acab9d52817c02a5347be14ff8e"
  end

  depends_on arch: [:x86_64, :arm64]
end
