cask "terraform-0.15.4" do
  version "0.15.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_darwin_amd64.zip"
    sha256 "9092c017257ead94223418dac7165541228e773463b476e0803848be4f3169a4"
  end

  depends_on arch: [:x86_64]
end
