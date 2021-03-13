cask "terraform-0.2.2" do
  version "0.2.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.2.2/terraform_0.2.2_darwin_amd64.zip"
    sha256 "1b4581e41e05145d2e9707cad5313636120a80b04cb796a503b3bfe59b6901d2"
  end

  depends_on arch: [:x86_64]
end
