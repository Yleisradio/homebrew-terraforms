cask "terraform-1.0.10" do
  version "1.0.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_darwin_amd64.zip"
    sha256 "e7595530a0dcdaec757621cbd9f931926fd904b1a1e5206bf2c9db6b73cee04d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.0.10/terraform_1.0.10_darwin_arm64.zip"
    sha256 "eecea1343888e2648d5f7ea25a29494fd3b5ecde95d0231024414458c59cb184"
  end

  depends_on arch: [:x86_64, :arm64]
end
