cask "terraform-0.9.5" do
  version "0.9.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.5/terraform_0.9.5_darwin_amd64.zip"
    sha256 "83b5596c2a510925f90a6572d237b864bc4cf277609ebac294c8f400261e657c"
  end

  depends_on arch: [:x86_64]
end
