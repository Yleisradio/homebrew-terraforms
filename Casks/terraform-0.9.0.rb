cask "terraform-0.9.0" do
  version "0.9.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.0/terraform_0.9.0_darwin_amd64.zip"
    sha256 "b6de7307c989455c4b1f351c2df1ad1a0308edc71868bb432ad74f3980f8a6a3"
  end

  depends_on arch: [:x86_64]
end
