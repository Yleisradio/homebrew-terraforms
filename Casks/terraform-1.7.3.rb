cask "terraform-1.7.3" do
  version "1.7.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.7.3/terraform_1.7.3_darwin_amd64.zip"
    sha256 "4787f5a422439d3b277a889b159981e88049f48bcf9e41e70481620567a7fd9c"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.7.3/terraform_1.7.3_darwin_arm64.zip"
    sha256 "85cddfd303c45989f0948a70ae03bb30f66c6e6106383697fe85ccd739137ca6"
  end

  depends_on arch: [:x86_64, :arm64]
end
