cask "terraform-1.4.0" do
  version "1.4.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.0/terraform_1.4.0_darwin_amd64.zip"
    sha256 "e897a4217f1c3bfe37c694570dcc6371336fbda698790bb6b0547ec8daf1ffb3"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.0/terraform_1.4.0_darwin_arm64.zip"
    sha256 "d4a1e564714c6acf848e86dc020ff182477b49f932e3f550a5d9c8f5da7636fb"
  end

  depends_on arch: [:x86_64, :arm64]
end
