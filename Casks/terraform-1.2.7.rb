cask "terraform-1.2.7" do
  version "1.2.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_darwin_amd64.zip"
    sha256 "b413d0d3346370a741205fcfa180a4043e9c247ff0189708cf5a655373a1574a"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.7/terraform_1.2.7_darwin_arm64.zip"
    sha256 "dd2d8143482f01e725a36f3864b78f518cae25e9480e5aeb1985637e65d5e56d"
  end

  depends_on arch: [:x86_64, :arm64]
end
