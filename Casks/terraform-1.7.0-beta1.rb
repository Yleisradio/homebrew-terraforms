cask "terraform-1.7.0-beta1" do
  version "1.7.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.0-beta1/terraform_1.7.0-beta1_darwin_amd64.zip"
    sha256 "c396b2f31051a0dac6850b3c417eea1ded208c6c46baac16469c48624352a2a0"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.0-beta1/terraform_1.7.0-beta1_darwin_arm64.zip"
    sha256 "4960ff477109074c6ad7392435422bd29bbbb1b21ef3718979cda2440e9835bf"
  end

  depends_on arch: [:x86_64, :arm64]
end
