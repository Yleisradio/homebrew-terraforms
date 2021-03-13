cask "terraform-0.8.0" do
  version "0.8.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.0/terraform_0.8.0_darwin_amd64.zip"
    sha256 "4f4410be73200f95f84e359409481c8c48bc70e659fc5f7ea3f33a1db574ff65"
  end

  depends_on arch: [:x86_64]
end
