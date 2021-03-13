cask "terraform-0.12.9" do
  version "0.12.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_darwin_amd64.zip"
    sha256 "dbb3c0ffb37a5e659e05b8c223a717f89ffda7761d23eaf596c31b9745557288"
  end

  depends_on arch: [:x86_64]
end
