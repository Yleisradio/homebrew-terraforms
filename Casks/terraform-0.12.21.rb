cask "terraform-0.12.21" do
  version "0.12.21"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_darwin_amd64.zip"
    sha256 "f89b620e59439fccc80950bbcbd37a069101cbef7029029a12227eee831e463f"
  end

  depends_on arch: [:x86_64]
end
