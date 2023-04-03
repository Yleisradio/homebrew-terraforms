cask "terraform-0.15.3" do
  version "0.15.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.3/terraform_0.15.3_darwin_amd64.zip"
    sha256 "2521b478aef5b8c9f374d0caa265bee2a03f31f290ee8d048eb2f110eb4ffc8e"
  end

  depends_on arch: [:x86_64]
end
