cask "terraform-0.13.7" do
  version "0.13.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.7/terraform_0.13.7_darwin_amd64.zip"
    sha256 "2ee62413afc847d9771d46d73fad6c7e8670bcdf44190320b5fb6a3a38ec6480"
  end

  depends_on arch: [:x86_64]
end
