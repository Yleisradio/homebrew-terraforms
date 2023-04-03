cask "terraform-1.0.0" do
  version "1.0.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_darwin_amd64.zip"
    sha256 "397eccdf68eb343e4946c37a877a4764409fe0b9037041daf1d17db18bca9839"
  end

  depends_on arch: [:x86_64]
end
