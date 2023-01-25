cask "terraform-0.12.29" do
  version "0.12.29"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_darwin_amd64.zip"
    sha256 "756b5d0d3d22d3d9f4d70aa79612e8137230228f491c2dba885c37130815e7cf"
  end

  depends_on arch: [:x86_64]
end
