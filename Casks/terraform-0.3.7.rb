cask "terraform-0.3.7" do
  version "0.3.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.3.7/terraform_0.3.7_darwin_amd64.zip"
    sha256 "aecdc8119cd637e3e60967c97f9912735400814546b8e925152203fb6e99c732"
  end

  depends_on arch: [:x86_64]
end
