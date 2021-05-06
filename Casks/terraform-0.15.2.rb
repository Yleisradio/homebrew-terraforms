cask "terraform-0.15.2" do
  version "0.15.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.2/terraform_0.15.2_darwin_amd64.zip"
    sha256 "d13b507e6f51fc58d880313775262954369fa6c98e163fa71e21b7d2a613c32a"
  end

  depends_on arch: [:x86_64]
end
