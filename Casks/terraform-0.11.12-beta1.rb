cask "terraform-0.11.12-beta1" do
  version "0.11.12-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.12-beta1/terraform_0.11.12-beta1_darwin_amd64.zip"
    sha256 "8c1f4f975bf4bba6725e6e1cbc69c4a7764a3fb6dc6aebf2e718456eed6405a9"
  end

  depends_on arch: [:x86_64]
end
