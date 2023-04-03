cask "terraform-0.15.0-rc2" do
  version "0.15.0-rc2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-rc2/terraform_0.15.0-rc2_darwin_amd64.zip"
    sha256 "73347bb7965b6681b7dc10f45d0eeec28b5916cbadb62ff97e9a885956ab9201"
  end

  depends_on arch: [:x86_64]
end
