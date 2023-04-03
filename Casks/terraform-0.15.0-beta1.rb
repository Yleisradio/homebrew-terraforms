cask "terraform-0.15.0-beta1" do
  version "0.15.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-beta1/terraform_0.15.0-beta1_darwin_amd64.zip"
    sha256 "bf4484361e9b2348b2f61856855c90f010c3cba927851dfcea3a3ac027306519"
  end

  depends_on arch: [:x86_64]
end
