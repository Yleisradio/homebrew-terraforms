cask "terraform-0.15.0-beta2" do
  version "0.15.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-beta2/terraform_0.15.0-beta2_darwin_amd64.zip"
    sha256 "c974ca266dd8efbfda4303c96e2add991a7a96f32665b580cfc727099aa36e21"
  end

  depends_on arch: [:x86_64]
end
