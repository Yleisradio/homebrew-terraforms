cask "terraform-0.11.0-beta1" do
  version "0.11.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.0-beta1/terraform_0.11.0-beta1_darwin_amd64.zip"
    sha256 "5a8f9118bf99285aa41c60b150fb628ec6a1bc49293663fd2255eedc5934f379"
  end

  depends_on arch: [:x86_64]
end
