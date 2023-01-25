cask "terraform-0.14.2" do
  version "0.14.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.2/terraform_0.14.2_darwin_amd64.zip"
    sha256 "02b71faa013ae13ddfe82181a0d8a5774ac915811aab01064edcb0104993b101"
  end

  depends_on arch: [:x86_64]
end
