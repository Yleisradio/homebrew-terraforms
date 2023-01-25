cask "terraform-0.13.4" do
  version "0.13.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_darwin_amd64.zip"
    sha256 "074f88409e7b1aab095231841e5920255690520d499d8c41c397e49f16c3de15"
  end

  depends_on arch: [:x86_64]
end
