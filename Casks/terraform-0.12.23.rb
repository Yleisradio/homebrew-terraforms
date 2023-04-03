cask "terraform-0.12.23" do
  version "0.12.23"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_darwin_amd64.zip"
    sha256 "12293764366ade518e2022c6ad981712e029e24bdbf3e1d5822de82dec1a6dbd"
  end

  depends_on arch: [:x86_64]
end
