cask "terraform-0.13.3" do
  version "0.13.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_darwin_amd64.zip"
    sha256 "f74d0443acfb707c90241faf20071a973877ba24c1a12d57ba553be096fa628c"
  end

  depends_on arch: [:x86_64]
end
