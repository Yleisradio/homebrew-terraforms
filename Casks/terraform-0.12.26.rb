cask "terraform-0.12.26" do
  version "0.12.26"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_darwin_amd64.zip"
    sha256 "5dd8deea9060d2d90b748425cde9063620131f02922a993e3d925048375d9b29"
  end

  depends_on arch: [:x86_64]
end
