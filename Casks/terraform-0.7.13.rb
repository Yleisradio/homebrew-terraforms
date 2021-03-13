cask "terraform-0.7.13" do
  version "0.7.13"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.13/terraform_0.7.13_darwin_amd64.zip"
    sha256 "c1e004ad2bff4e92edb13cf32a18b67b5178fc3597a844beeda09cc4f9c30b65"
  end

  depends_on arch: [:x86_64]
end
