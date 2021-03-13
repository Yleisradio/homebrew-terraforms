cask "terraform-0.5.3" do
  version "0.5.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.5.3/terraform_0.5.3_darwin_amd64.zip"
    sha256 "9d3388266510a03ea5f5ba2a721ab2affc854777c973d821f16e7dcd514adb7b"
  end

  depends_on arch: [:x86_64]
end
