cask "terraform-1.6.0-alpha20230802" do
  version "1.6.0-alpha20230802"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.6.0-alpha20230802/terraform_1.6.0-alpha20230802_darwin_amd64.zip"
    sha256 "f58e5cecc9a65539952efb49df0002084265b261cb68eb0186e38e4676a9bb23"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.6.0-alpha20230802/terraform_1.6.0-alpha20230802_darwin_arm64.zip"
    sha256 "11d07e1e4295f1b42c4ee75c198bd2c9c18842ff4132a907ecf9591bf80a0b04"
  end

  depends_on arch: [:x86_64, :arm64]
end
